
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
    CHS0 = 1;/* Enable ADC channel 1 (AN1) "Power ON button", ADC is ON    */    
    ADON = 1;   
    
     __delay_ms(10); 
     
       GO   = 1;
       while(!ADIF);  // make ADC Measurement
     __delay_ms(10);
     
       adcValue = (int) ((ADRESH<<8)+ADRESL); // ADC result
     
     if ((adcValue > 440) && (adcValue < 520)){
         GP5      = 0; /* Power OFF */
         return true;
        }
     else {
         GP5      = 1; /* Power OFF */
         if (adcValue <= 440){
             TwoShortOneLong();     /*??? ????????, ???? ??????? ????*/
         }
         else if (adcValue >= 520){
             TwoShortTwoLong();     /*??? ????????, ??? ??????? ?????*/
         }
         return false;
        }
       
}

bool Pin7ThermoControl (void){
    
       ADCON0 = 0x00;   
       ADFM = 1;               /* ADC results is right justified                            */
       ADON = 1;               /* ADC channel 0 (AN0) "Thermal control" by default, ADC is ON    */ 
    
       __delay_ms(10); 
       GO   = 1;
       while(!ADIF);  // make ADC Measurement
       __delay_ms(10);
    
       adcValue = (int) ((ADRESH << 8) + ADRESL); // ADC result
             
             if ((adcValue >= 200) && (adcValue < 395)){
                  pwmValue = 25;
                  return true; 
                }
             else if ((adcValue >= 395) && (adcValue < 640)){
                        pwmValue = 40;
               //         TwoShort();
                        return true; 
                       }
             else if ((adcValue >= 640) && (adcValue < 1000))
                       {
                        pwmValue = 65;
               //        ThreeShort();
                        return true; 
                       }
             else if ((adcValue >= 1000))
                       {
                        pwmValue = 95;
                //        ThreeLong();
                        return true; 
                       }
             else {
                  pwmValue = 0;
                //  ThreeLongOneShort();
                  return false;
                       }
}

void ButtonEvent (void){    
       
    if (!Pin7ThermoControl()){
         GP5  = 1;  
         ThreeLongOneShort();
    }
    else if (Pin7ThermoControl()){
            if (!Pin6VoltageControl()){
              GP5 = 1;             
            } 
            else if (Pin6VoltageControl()){
              GP5 = 0;             
            } 
    }
}



