#include "ADC.h"
#include <xc.h>

void Init_uC()
{    
	CMCON  = 0x07;		   /* Shut down the Comparator                        */
    
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
    
    ANSEL   = 0b00110011;  /* Sets Tosc = 4us (RC Generator)                  **
                            * and GP0,GP1 as analog                           */  
    CHS1 = 0;
    CHS0 = 1;              /* Enable ADC channel 1 (AN1) "Power ON button"    */ 
    ADIE = 1;              /* Enable ADC Interrupt                            */
    GIE  = 1;			   /* Enable global interrupts                        */
}



