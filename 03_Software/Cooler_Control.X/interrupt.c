#include <xc.h>
#include <stdint.h>
#include "interrupt.h"
#include "init_periphery.h"
#include "sounds.h"

#define _XTAL_FREQ   4000000 

#define PWM_ON

uint16_t cnt1             = 0;
uint8_t  cnt0             = 0;
uint16_t adcValue         = 0;

uint8_t  measureType      = 1;
volatile uint8_t  errorType        = ERROR_OK;

void __interrupt() ISR(void)
{       
 
//##########################Timer0#####################################// 
    if (TMR0IF == 1){       // Timer0 is overload 
    
        TMR0 = 6;      // ???????? ??? ???????????? ????? 1 ?? ??? ???????????? 256
	cnt0++;
	TMR0IF   = 0;  // ?????????? ???? ?????????? ??????? 0       
     }
     
     
 //##########################Timer1#####################################//     
    if (TMR1IF == 1){
         
	 TMR1H = 0xFC;
	 TMR1L = 0x17; //1ms          Fosc/4 1000000/1000 = 1000Hz(1ms)  65535-1000 = 64535 (0xFC17)
    
         cnt1++;
	 
         TMR1IF = 0;  // ?????????? ???? ?????????? ??????? 1
    }


 //##########################ADC#####################################//      
   if (ADIF == 1){     
     adcValue = (uint16_t) ((ADRESH << 8) + ADRESL); /* ADC result */    
      
      switch (measureType){
       case VOLTAGE_MEASURE: 

	if ((adcValue > 190) && (adcValue < 285) && (errorType == ERROR_OK)){
           GP5 = 0;
	   GP2 = 0;
           }  	
        else if (adcValue <= 190) { 
           GP5 = 1; 
	   errorType = ERROR_UNDER_VOLTAGE; 
           }
	 else if (adcValue >= 285){
           GP5 = 1;
	   errorType = ERROR_OVER_VOLTAGE; 
           }    
	   
       if(errorType != ERROR_OK){
            do{
	    DataProcessing();} 
	    while (errorType != ERROR_OK); 	    
          }
	  
          MuxTemp();
        break;
	
	
	case TEMPERATURE_MEASURE:
	
	     if (adcValue < 200){
		      GP5       = 1;  
		      GP4       = 0;
           	      errorType = ERROR_OK;
		  }
                
             else if ((adcValue >= 200) && (adcValue < 930)){ 
		        GP4       = 0;
			errorType = ERROR_OK;
                       }
	       	       
	     else if ((adcValue >= 930) && (adcValue < 970)){ 
		        GP4 = 1;
			errorType = ERROR_OK;
                       }	
             else  {
		        GP4       = 1;
	                GP5       = 1;
                        errorType = ERROR_TMP_HIGH;  		
		   }
	

        if(errorType != ERROR_OK){
            do{
	    DataProcessing();} 
	    while (errorType != ERROR_OK); 	    
          }
		
	    MuxVoltage();
	    
	    
	break;
	
	default:
	break;
	}  
     }
    
    
}

void MuxVoltage(void){ 
       ADCON0 = 0;                     /* must after every new switch be                          */ 
       ADON   = 1;                     /* ADC is ON                                               */
       ADFM   = 1;                     /* ADC results is right justified                          */
       CHS1   = 0;   
       CHS0   = 1;                     /* Enable ADC channel 1 (AN1) "Power ON button", ADC is ON */    
       measureType = VOLTAGE_MEASURE; 
       ADIF   = 0;
//       while (cnt0 < 50);
//       cnt0   = 0;
       __delay_us(50);
       GO     = 1; 
}


void MuxTemp(void){
       ADCON0      = 0;                   /* must after every new switch be*/ 
       ADON        = 1;                   /* ADC is ON                                       */
       ADFM        = 1;                   /* ADC results is right justified                            */
       CHS1        = 0;   
       CHS0        = 0;                   /* Enable ADC channel 0 (AN0) "Temperature control", ADC is ON    */ 
       measureType = TEMPERATURE_MEASURE;
       ADIF        = 0;
 //      while (cnt0 < 50)
 //      cnt0        = 0;
       __delay_us(50);
       GO          = 1;    
}


void DataProcessing(void){
    
    	 switch(errorType){
	 
	 case ERROR_OK:
	    break;
	 
	 case ERROR_UNDER_VOLTAGE:
	   TwoShortOneLong();
	   errorType = ERROR_OK;
	    break;
	    
	 case ERROR_OVER_VOLTAGE:
           TwoShortTwoLong();
	   errorType = ERROR_OK;
	    break;
	 
	 case ERROR_TMP_HIGH:
           ThreeShort();
	   errorType = ERROR_OK;
	    break;      
	    
	 default:
            break;	 
	}
}