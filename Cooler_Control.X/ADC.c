
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


void ButtonEvent (void){    
        if  ((InVoltageControl() >= 475) && (InVoltageControl() <= 540)){    /* Power switch ON                                 */
                      
                       GP5      = 0;
                       pwmValue = ThermoControl();
                       /*PWM_Value = 100;*/
                      }
        else if (InVoltageControl() < 475) {
                      /* dva korotkih odin dlinniy */
                      GP5      = 1;
                      pwmValue = 0;
        }
                
        else if (InVoltageControl() > 540){     /* Power switch OFF                                */
                       /* dva korotkih dva dlinnyh */
                       GP5      = 1;
                       pwmValue = 0;
                      }
 }

unsigned int ThermoControl (void){
    
       ADCON0 = 0x00;   
       ADFM = 1;               /* ADC results is right justified                            */
       ADON = 1;               /* ADC channel 0 (AN0) "Thermal control" by default, ADC is ON    */ 
    
       __delay_ms(10); 
       GO   = 1;
       while(!ADIF);  // make ADC Measurement
       __delay_ms(10);
    
       adcValue = (int) ((ADRESH<<8)+ADRESL); // ADC result
    
             if (adcValue < 180)
                       {
                        pwmValue = 10;
                       }
             else if ((adcValue >= 180) && (adcValue < 460))
                       {
                        pwmValue = 25;
                       }
             else if ((adcValue >= 460) && (adcValue < 614))
                       {
                        pwmValue = 50;
                       }
             else if ((adcValue >= 614) && (adcValue < 737))
                       {
                        pwmValue = 75;
                       }
             else if ((adcValue >= 737) && (adcValue < 1023))
                       {
                        pwmValue = 95;
                       }
       
       return pwmValue;   
}

int InVoltageControl (void){
    
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


