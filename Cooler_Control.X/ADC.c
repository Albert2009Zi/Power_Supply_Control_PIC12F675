
#include "ADC.h"
#include <xc.h>

#define _XTAL_FREQ   4000000 

extern unsigned int PWM_Value;
extern int ADC_Value;

void init_uC()
{    
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
    ADFM    = 1;           /* ADC results is right justified                  */
    VCFG    = 0;           /* Sets Vref = Vdd                                 */
    TRISIO0 = 1;           /* Sets GP0 (Pin 7) as input. Temperature control  */
    TRISIO1 = 1;           /* Sets GP1 (Pin 6) as input. Button control       */
    GP1     = 0;
    
    ANSEL   = 0b00110001;  /* Sets Tosc = 4us (RC Generator)                  **
                                                       */  
    CHS1 = 0;
    CHS0 = 0;              /* Enable ADC channel 1 (AN1) "Power ON button"    */ 
    GIE  = 1;			   /* Enable global interrupts                        */
}


void buttonEvent (void)
{    
        if       (GP1)     /* Power switch ON                                 */
                      {
                       GP5       = 0;
                       PWM_Value = thermoControl();
                       /*PWM_Value = 100;*/
                      }
        else if (!GP1)     /* Power switch OFF                                */
                      {
                       GP5       = 1;
                       PWM_Value = 0;
                      }
}

unsigned int thermoControl (void)
{
       __delay_ms(10); 
       GO   = 1;
       while(!ADIF);  // make ADC Measurement
       __delay_ms(10);
    
       ADC_Value = (int) ((ADRESH<<8)+ADRESL); // ADC result
    
             if (ADC_Value < 180)
                       {
                        PWM_Value = 10;
                       }
             else if ((ADC_Value >= 180) && (ADC_Value < 460))
                       {
                        PWM_Value = 25;
                       }
             else if ((ADC_Value >= 460) && (ADC_Value < 614))
                       {
                        PWM_Value = 50;
                       }
             else if ((ADC_Value >= 614) && (ADC_Value < 737))
                       {
                        PWM_Value = 75;
                       }
             else if ((ADC_Value >= 737) && (ADC_Value < 1023))
                       {
                        PWM_Value = 95;
                       }
       
       return PWM_Value;   
}


