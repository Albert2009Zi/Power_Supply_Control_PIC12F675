
#include "ADC.h"
#include <xc.h>

#define _XTAL_FREQ   4000000 

extern unsigned int pwmValue;
extern int adcValue;

void Init_uC(){    
	CMCON  = 0x07;		   /* Shut down the Comparator                        */
    VRCON  = 0x00;         /* Shut down Comparator reference Voltage          */
    
    /* Sets all Pins of chip as digital output  */
    TRISIO  = 0;
    GPIO    = 0;
    
    /* Sets GP5 (Pin 2) in nessesary conditions */
    TRISIO5 = 0;           /* Sets GP5 (Pin 2) as output                      */
    GP5     = 1;           /* High level on GP5 (Pin 2)                       */
    
    /* Sets GP4 (Pin 3) in nessesary conditions */
    TRISIO4 = 0;           /* Sets GP4 (Pin 3) as output                      */
    GP4     = 0;           /* High level on GP4 (Pin 3)                       */
    
    
    /*Sets Pin4 of chip as ADC input  */
    ADON    = 1;           /* ADC is ON                                       */
    
    VCFG    = 1;           /* Sets Vref = Vpin6                                 */
    TRISIO0 = 1;           /* Sets GP0 (Pin 7) as input. Temperature control  */
    TRISIO1 = 1;           /* Sets GP1 (Pin 6) as input. Button control       */
    GP1     = 0;
    
    ANSEL   = 0b00110001;  /* Sets Tosc = 4us (RC Generator)                  **
                                                       */  
                
    GIE  = 1;			   /* Enable global interrupts                        */
}


int Pin6VoltageControl (void){
    
    ADCON0 = 0x00;
    
    ADFM = 1;               /* ADC results is right justified                            */
    ADCON0 |= 0b00100001;   /* Enable ADC channel 1 (AN1) "Power ON button", ADC is ON    */ 
    
     __delay_ms(10); 
     
       GO   = 1;
       while(!ADIF);  // make ADC Measurement
     __delay_ms(10);
    
     adcValue = (int) ((ADRESH<<8)+ADRESL); // ADC result
     
     return adcValue;
}

unsigned int Pin7ThermoControl (void){
    
       ADCON0 = 0x00;   
       ADFM = 1;               /* ADC results is right justified                            */
       ADON = 1;               /* ADC channel 0 (AN0) "Thermal control" by default, ADC is ON    */ 
    
       __delay_ms(10); 
       GO   = 1;
       while(!ADIF);  // make ADC Measurement
       __delay_ms(10);
    
       adcValue = (int) ((ADRESH<<8)+ADRESL); // ADC result
    
             if (adcValue < 200)
                       {
                        GP5 = 0;
                        pwmValue = 0;
                       }
             else if ((adcValue >= 200) && (adcValue < 395)) //between 30 and 45 Grad
                       {
                        GP5 = 0;
                        pwmValue = 25;
                       }
             else if ((adcValue >= 395) && (adcValue < 640))
                       {
                        GP5 = 0;
                        pwmValue = 65;
                       }
             else if ((adcValue >= 640) && (adcValue < 1000))
                       {
                        GP5 = 0;
                        pwmValue = 85;
                       }
             else if ((adcValue >= 1000))
                       {
                        GP5 = 1;
                        pwmValue = 95;
                       }
       
       return pwmValue;   
}

void ButtonEvent (void){    
       
        if (Pin6VoltageControl() < 470) {
                      /* dva korotkih odin dlinniy */
                      GP5      = 1; /* Power OFF */
                      pwmValue = 0;
        }
                
        else if (Pin6VoltageControl() > 540){     
                       /* dva korotkih dva dlinnyh */
                       GP5      = 1; /* Power OFF */
                       pwmValue = 0;
                      }
//        else if (Pin7ThermoControl() < 100){/* Power switch ON                                 */
//                       GP5      = 1;
//                       pwmValue = 0;
//                       /*PWM_Value = 100;*/
//              }
        else {         
                       Pin7ThermoControl();
        }
        
 }






