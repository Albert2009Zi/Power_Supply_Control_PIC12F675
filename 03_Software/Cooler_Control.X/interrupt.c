#include <xc.h>
#include <stdint.h>
#include "interrupt.h"
#include "initPeriphery.h"
 
#define _XTAL_FREQ 4000000 

extern volatile uint16_t cnt0;

volatile ParameterFlags prmFlags = {0};

void MuxVoltage(void){ 
       ADCON0      = 0;                     /* must after every new switch be                          */ 
       ADON        = 1;                     /* ADC is ON                                               */
       ADFM        = 1;                     /* ADC results is right justified                          */
       CHS1        = 0;   
       CHS0        = 1;                     /* Enable ADC channel 1 (AN1) "Power ON button", ADC is ON */     
       ADIF        = 0;
       __delay_us(50);
       GO = 1;
}


void MuxTemp(void){
       ADCON0      = 0;                   /* must after every new switch be*/ 
       ADON        = 1;                   /* ADC is ON                                       */
       ADFM        = 1;                   /* ADC results is right justified                          */
       CHS1        = 0;   
       CHS0        = 0;                   /* Enable ADC channel 0 (AN0) "Temperature control", ADC is ON    */ 
       ADIF        = 0;
       __delay_us(50);
       GO = 1;
}

void __interrupt() ISR(void)
{       
//##########################Timer0#####################################// 
    if (TMR0IF == 1){                 // Timer0 is overload      
            TMR0     = 5;             // To obtain a 1 ms interval that increments cnt0, 250 timer ticks are required. 255 - 5 = 250
	        ++cnt0;
	        TMR0IF   = 0;             // neccessary set this flag to 0    
            TMR0IE   = 1;             // Timer0 Interuupt is enabled  
    }   
}

 //##########################ADC#####################################//  

void ADCProcessing(void){

    uint16_t adcValue = 0;
    static uint8_t  adcState = 0;
    
    if (ADIF == 1){     
     adcValue = (uint16_t) ((ADRESH << 8) + ADRESL); /* ADC result */    
     
     switch (adcState){
        case STATE_MEASURE_VOLTAGE: 

	  if ((adcValue > 96) && (adcValue < 148)){
	     if(prmFlags.errorHighTemperature == ERROR_OK) GP5 = 0;
	      else GP5 = 1;
	      prmFlags.errorUnderVoltage = ERROR_OK;
          prmFlags.errorOverVoltage  = ERROR_OK;
           }  	
        else if (adcValue <= 96) { 
          GP5 = 1; 
	      prmFlags.errorUnderVoltage = ERROR_NOK;
	 }
	 
	 
	 else if (adcValue >= 148){
       GP5 = 1;
	   prmFlags.errorOverVoltage = ERROR_NOK;  
	  }
	 
      MuxTemp();
	  adcState = STATE_MEASURE_TEMPERATURE;
      break;
	
	
	case STATE_MEASURE_TEMPERATURE:
	//Warning!!! GP4 on real device (not simulation) controls a fun
	     if (adcValue < 200){
		      GP5       = 1;  
		    //  GP4       = 0;
           	 prmFlags.errorHighTemperature = ERROR_OK;
		  }
                
             else if ((adcValue > 200) && (adcValue < 930)){ 
	             if((prmFlags.errorUnderVoltage == ERROR_OK) && (prmFlags.errorOverVoltage == ERROR_OK)) GP5 = 0;
		        else GP5 = 1; 
		    //    GP4 = 0;
			    prmFlags.errorHighTemperature = ERROR_OK;
                       }
	       	       
	     else if ((adcValue > 930) && (adcValue < 970)){ 
	            if((prmFlags.errorUnderVoltage == ERROR_OK) && (prmFlags.errorOverVoltage == ERROR_OK)) GP5 = 0;
		        else GP5 = 1;
		    //    GP4 = 1;
			    prmFlags.errorHighTemperature = ERROR_OK;
                       }	
             else if (adcValue > 970) {
		      //  GP4       = 1;
	            GP5       = 1;
                prmFlags.errorHighTemperature = ERROR_NOK; 
				 	
		   }
		   		
	    MuxVoltage();
	    adcState = STATE_MEASURE_VOLTAGE;	    
	break;
	
	default:
	break;
	}  
  } 
}

