#include <xc.h>
#include <stdint.h>
#include "sounds.h"
#include "init_periphery.h"
#include "defines.h"

#define _XTAL_FREQ   4000000 

extern uint8_t  measureType;
extern uint8_t  msFlag; 

void InitTimer0(void){

    OPTION_REG = 0b11000001;  // ????????? ??????? TIMER0 (1:4 prescaler)
    TMR0 = 0;                 // ??????????????? ????????? ??????? (??? ????????? 1 ????????????)
    T0IF = 0;                 // ?????????? ???? ?????????? ??????? 0
    T0IE = 1;                 // ????????? ?????????? ?? ??????? 0
         
}

void InitTimer1(void){

     TMR1H = 0xFC;
	 TMR1L = 0x17;         // Interrupt after 1ms 0x03E8 = 1000, 1000000/1000 = 1000Hz, 1/1000Hz = 1ms
	 
	 T1CON = 0x01;         //Enable Timer 1
	 
	 T1IF = 0;
	 T1IE = 1;
	 
}

void MuxVoltage(){ 
       ADCON0 = 0;                     /* must after every new switch be                          */ 
       ADON   = 1;                     /* ADC is ON                                               */
       ADFM   = 1;                     /* ADC results is right justified                          */
       CHS1   = 0;   
       CHS0   = 1;                     /* Enable ADC channel 1 (AN1) "Power ON button", ADC is ON */    
       measureType = VOLTAGE_MEASURE; 
       ADIF   = 0;
    /*   while (msFlag != 1);
       msFlag = 0;*/
       __delay_ms(1);
       GO     = 1; 
}


void MuxTemp(){
       ADCON0      = 0;                   /* must after every new switch be*/ 
       ADON        = 1;                   /* ADC is ON                                       */
       ADFM        = 1;                   /* ADC results is right justified                            */
       CHS1        = 0;   
       CHS0        = 0;                   /* Enable ADC channel 0 (AN0) "Temperature control", ADC is ON    */ 
       measureType = TEMPERATURE_MEASURE;
       ADIF        = 0;
       /*   while (msFlag != 1);
       msFlag = 0;*/
       __delay_ms(1);
       GO          = 1;    
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
    GP4     = 0;           /* High level on GP4 (Pin 3)                       */
    
    
    VCFG    = 1;           /* Sets Vref = Vpin6                                 */
    TRISIO0 = 1;           /* Sets GP0 (Pin 7) as input. Temperature control  */
    TRISIO1 = 1;           /* Sets GP1 (Pin 6) as input. Button control       */
    
    ANSEL   = 0b00110011;  /* Sets Tosc = 4us (RC Generator)                  **
                                                       */  
    PEIE = 1;            
    GIE  = 1;			   /* Enable global interrupts                        */

    LongSound();     
    MuxVoltage();
}





