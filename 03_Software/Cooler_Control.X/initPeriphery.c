#include <xc.h>
#include <stdint.h>
#include "initPeriphery.h"
#include "interrupt.h"
#include "sounds.h"

#define _XTAL_FREQ   4000000 

void InitTimer0(void){
    OPTION_REG = 0b11000001;  // Configure timer TIMER0 (1:4 prescaler) 1000000/4 = 250000Hz
    TMR0 = 0;                 // Timer advance enable (for interval 1ms)
    TMR0IF = 0;               // Drop the flag of timer0 interrupt
    TMR0IE = 1;               // Timer0 Interuupt is enabled        
}

void Init_uC(void){    
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
    GP4     = 1;           /* High level on GP4 (Pin 3)                       */
    
    
    VCFG    = 0;           /* Sets Vref = Vdd                              */
    TRISIO0 = 1;           /* Sets GP0 (Pin 7) as input. Temperature control  */
    TRISIO1 = 1;           /* Sets GP1 (Pin 6) as input. Button control       */
    
    ANSEL   = 0b00110011;  /* Sets Tosc = 4us (RC Generator)                  **
                                                       */  
    PEIE = 1;            
    GIE  = 1;			   /* Enable global interrupts                        */
    
        /**************Long Beep*****************************/
    prmFlags.playLong = 1;
        
    MuxVoltage();
}