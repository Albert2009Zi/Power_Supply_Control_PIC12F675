#include <xc.h>
#include <stdint.h>
#include "interrupt.h"
#include "init_periphery.h"

#define _XTAL_FREQ   4000000 

#define PROTOTYPE


uint16_t cnt1             = 0;
uint8_t  cnt0             = 0;

uint8_t  measureType = VOLTAGE_MEASURE;
extern uint8_t  errorType;
uint16_t adcValue    = 0;

void MuxVoltage(void){ 
       ADCON0      = 0;                     /* must after every new switch be                          */ 
       ADON        = 1;                     /* ADC is ON                                               */
       ADFM        = 1;                     /* ADC results is left justified                          */
       CHS1        = 0;   
       CHS0        = 1;                     /* Enable ADC channel 1 (AN1) "Power ON button", ADC is ON */    
       measureType = VOLTAGE_MEASURE; 
       ADIF        = 0;
       __delay_us(50);
       GO          = 1; 
}


void MuxTemp(void){
       ADCON0      = 0;                   /* must after every new switch be*/ 
       ADON        = 1;                   /* ADC is ON                                       */
       ADFM        = 1;                   /* ADC results is left justified                          */
       CHS1        = 0;   
       CHS0        = 0;                   /* Enable ADC channel 0 (AN0) "Temperature control", ADC is ON    */ 
       measureType = TEMPERATURE_MEASURE;
       ADIF        = 0;
       __delay_us(50);
       GO          = 1;    
}

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
	 
        TMR1IF = 0;   // ?????????? ???? ?????????? ??????? 1
    }
}





 //##########################ADC#####################################//  

void ADCProcessing(void){

    if (ADIF == 1){     
     adcValue = (uint16_t) ((ADRESH << 8) + ADRESL); /* ADC result */    
     
 //    switch (measureType){
 //      case VOLTAGE_MEASURE: 
          
//	if ((adcValue > 190) && (adcValue < 285)){
    if ((adcValue > 88) && (adcValue < 138)){  
           GP5 = 0;
	       GP2 = 0;
           errorType = ERROR_OK;
           }  	
//        else if (adcValue <= 190) {             
        else if (adcValue <= 88) {
             
        GP5 = 1; 
	    errorType = ERROR_UNDER_VOLTAGE; 
         }         
//     else if (adcValue >= 285){
     else if (adcValue >= 138){
           GP5 = 1;
	       errorType = ERROR_OVER_VOLTAGE; 
           }      
     MuxVoltage(); //Nur Debug
//          MuxTemp();
//        break;
	
	
/*	case TEMPERATURE_MEASURE:
        
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
         
	    MuxVoltage();	    	    
	break;
	
	default:
	break;
	}  */
  } 
}

