
#include "ADC.h"
#include <xc.h>
#include "sounds.h"

#define _XTAL_FREQ   4000000 

extern unsigned int pwmValue;
extern int adcValue;

void Init_uC(){    
	CMCON  = 0x07;		   /* Shut down the Comparator                        */
    VRCON  = 0x00;         /* Shut down Comparator reference Voltage          */
    
    /* Sets all Pins of chip as digital output  */
    TRISIO  = 0;
    GPIO    = 0;
    
    /* Sets GP2 (Pin 5) in nessesary conditions */
    TRISIO2 = 0;           /* Sets GP2 (Pin 5) as output                      */
    GP2     = 0;           /* Low level on GP2 (Pin 5)                        */
    
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
    
    ANSEL   = 0b00110011;  /* Sets Tosc = 4us (RC Generator)                  **
                                                       */  
                
    GIE  = 1;			   /* Enable global interrupts                        */
}


bool Pin6VoltageControl (void){
    
    ADCON0 = 0x00;  
    ADFM = 1;               /* ADC results is right justified                            */
    CHS1 = 0;   
    CHS0 = 1;              /* Enable ADC channel 1 (AN1) "Power ON button", ADC is ON    */    
    ADON = 1;   
    
     __delay_ms(10); 
     
       GO   = 1;
       while(!ADIF);       /* make ADC Measurement */
     __delay_ms(10);
     
       adcValue = (int) ((ADRESH<<8)+ADRESL); /* ADC result*/
     
     if ((adcValue > 190) && (adcValue < 285)){
         return true;  /* Vin in normal conditions */
        }
     else {
         return false; /* Vin is in low or overvoltage */
        }
       
}

bool Pin7ThermoControl (void){
    
       ADCON0 = 0x00;   
       ADFM = 1;               /* ADC results is right justified                            */
       ADON = 1;               /* ADC channel 0 (AN0) "Thermal control" by default, ADC is ON    */ 
    
       __delay_ms(5); 
       GO   = 1;
       while(!ADIF);  /* make ADC Measurement */
       __delay_ms(5);
    
       adcValue = (int) ((ADRESH << 8) + ADRESL); /* ADC result */
             
             if (adcValue < 200){  /* Pin 7 Signal is in low level < 1V. Error */
                  pwmValue = 0;
                  return false;
                }
             else if ((adcValue >= 200) && (adcValue < 880)){ /* Temperature is good, cooler is off */
                        pwmValue = 0;
                        return true; 
                       }
             else if ((adcValue >= 880) && (adcValue < 910)){ /* Temperature is between 43 and 57 degrees Celsium */
                                                              /* Cooler PWM is 30% */
                        pwmValue = 30;
                        return true; 
                       }
             else if ((adcValue >= 910) && (adcValue < 940)){ /* Temperature is between 57 and 71 degrees Celsium */
                        pwmValue = 45;                        /* Cooler PWM is 45% */
                        return true; 
                       }
             else if ((adcValue >= 940) && (adcValue < 970)){ /* Temperature is between 71 and 85 degrees Celsium */
                        pwmValue = 55;                        /* Cooler PWM is 55% */
                        return true; 
                       }
             else     { /* Temperature is high than 85 degrees Celsium. Error */
                        pwmValue = 85;                             
                        return false; 
                       }
}

void ButtonEvent (void){    
       
    if (!Pin7ThermoControl()){
         GP5  = 1;  /* Error on termocontrol and outer comparator Pin */
    }
    else if (Pin7ThermoControl()){
            if (!Pin6VoltageControl()){
              GP5 = 1; /* Power button not in ON or voltage error */
            } 
            else if (Pin6VoltageControl()){
              GP5 = 0; /* Temperature and Vin is OK*/
            } 
    }
}



