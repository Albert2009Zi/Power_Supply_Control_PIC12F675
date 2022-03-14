#include "ADC.h"
#include <xc.h>

#define _XTAL_FREQ   4000000 

extern unsigned char PWM_Value;
extern int ADC_Value;
int Button_Value = 0;


void Init_uC()
{    
	CMCON  = 0x07;		   /* Shut down the Comparator                        */
    VRCON  = 0x00;         /* Shut down Comparator reference Voltage          */
    
    /* Sets all Pins of chip as digital output  */
    TRISIO  = 0;
    GPIO    = 0;
    
    /* Sets GP5 (Pin 2) in nessesary conditions */
    TRISIO5 = 0;           /* Sets GP5 (Pin 2) as output                      */
    GP5     = 0;           /* High level on GP5 (Pin 2)                       */
    
    /* Sets GP4 (Pin 3) in nessesary conditions */
    TRISIO4 = 0;           /* Sets GP4 (Pin 3) as output                      */
    GP4     = 0;           /* High level on GP4 (Pin 3)                       */
    
    
    /*Sets Pin4 of chip as ADC input  */
    ADON    = 1;           /* ADC is ON                                       */
    ADFM    = 1;           /* ADC results is right justified                  */
    VCFG    = 0;           /* Sets Vref = Vdd                                 */
    TRISIO0 = 1;           /* Sets GP0 (Pin 7) as input. Temperature control  */
    TRISIO1 = 1;           /* Sets GP1 (Pin 6) as input. Button control       */
    
    ANSEL   = 0b00110011;  /* Sets Tosc = 4us (RC Generator)                  **
                            * and GP0,GP1 as analog                           */  
    CHS1 = 0;
    CHS0 = 1;              /* Enable ADC channel 1 (AN1) "Power ON button"    */ 
    GIE  = 1;			   /* Enable global interrupts                        */
}


void measurements (void)
{
    __delay_ms(10);
    GO = 1;
    while(!ADIF);  // make ADC Measurement
    __delay_ms(10);    
    Button_Value = (int) ((ADRESH<<8)+ADRESL); // ADC result
    
    if (Button_Value < 460)
          {GP5    = 1;
           PWM_Value = 0;}
    else  {GP5    = 0;
           PWM_Value = 127;}
                
    
//    if ((Button_Value >= 460) && (ADIF))
//    {  CHS0 = 1;      //Temperature control channel on
//
//       
//       __delay_us(20); 
//       GO   = 1;
//       while(!ADIF);  // make ADC Measurement
//       __delay_us(20);
//    
//       ADC_Value = (int) ((ADRESH<<8)+ADRESL); // ADC result
//    
//             if (ADC_Value < 460)
//                       {PWM_Value = 0;
//                         TRISIO4 = 1;}
//             else if ((ADC_Value >= 460) && (ADC_Value < 614))
//                       {PWM_Value = 127;
//                        TRISIO4 = 0;}
//             else if ((ADC_Value >= 614) && (ADC_Value < 737))
//                       {PWM_Value = 185;
//                        TRISIO4 = 0;}
//             else if ((ADC_Value >= 737) && (ADC_Value < 1023))
//                       {PWM_Value = 230;
//                        TRISIO4 = 0;}
//        CHS0 = 0;
//    }

}


