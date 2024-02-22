#include <xc.h>
#include <stdint.h>
#include "interrupt.h"
#include "sounds.h"
#include "init_periphery.h"
#include "defines.h"

#define _XTAL_FREQ   4000000 

extern uint16_t cnt1;
extern uint8_t  msFlag; 
extern uint16_t adcValue;

extern uint8_t  measureType;
uint8_t  errorType        = ERROR_OK;

void __interrupt() ISR(void)
{       
    
    if (TMR0IF == 1){       // Timer0 is overload 
        TMR0   = 0;
	msFlag = 1;
	T0IF   = 0;  // ?????????? ???? ?????????? ??????? 0       
     }
     
    if (TMR1IF == 1){
         
	 TMR1H = 0xFC;
	 TMR1L = 0x17; //1ms          Fosc/4 1000000/1000 = 1000Hz(1ms)  65535-1000 = 64535 (0xFC17)
    
         cnt1++;
	 
	 switch(errorType){
	 
	 case ERROR_OK:
	    break;
	 
	 case ERROR_UNDER_VOLTAGE:
	   TwoShortOneLong();
	    break;
	    
	 case ERROR_OVER_VOLTAGE:
           TwoShortTwoLong();
	    break;
	 
	 case ERROR_TMP_HIGH:
           ThreeShort();
	    break;      
	    
	 default:
            break;	 
	}
	
         TMR1IF = 0;  // ?????????? ???? ?????????? ??????? 1
    }
     
    if (ADIF == 1){      
      switch (measureType){
      
       case VOLTAGE_MEASURE: 
        adcValue = (uint16_t) ((ADRESH << 8) + ADRESL); /* ADC result */    
  
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
          MuxTemp();
        break;
	
	
	case TEMPERATURE_MEASURE:
	 adcValue = (uint16_t) ((ADRESH << 8) + ADRESL);
	
            if (adcValue < 200)  
	        {
		      GP5       = 1;  
		      GP4       = 0;
                  //    pwmValue  = 0; 
		      //errorType = ERR_TMP_CONTROL_LOW;     
		  }
                
             else if ((adcValue >= 200) && (adcValue < 880)){ 
                   //     pwmValue  = 0;
		        GP4       = 0;
			errorType = ERROR_OK;
                       }
	       	       
	     else if ((adcValue >= 880) && (adcValue < 970)){ 
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
	}  
     } 
    
}

