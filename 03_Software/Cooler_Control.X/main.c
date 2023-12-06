/** 
 *  ===================================================
 *  DIY PROJECT NAME: COOLER CONTROL
 *  ===================================================
 * 
 *  @Filename           :   main.c 
 *  @Date               :   01.12.2022
 *  @Reference          :   Power supply/converter 12V DC to 220V AC
 *                          Temperature control
 *                          Over and under Voltage control
 *                          Cooler control
 *  @HW Compatibility   :   Microchip PIC12F675, 8bit, 8 Pin
 *  @Code reference     :   PIC12F675 Stack by Microchip 
 *  @SW Owner           :   Privat authors
 *                          Albert Ziatdinov ziatdinovar@gmail.com
 *                          Alex Talko  
 *  @Authors            :   Albert Ziatdinov
 *                          Alex Talko
 * 
 * @section Introduction
 * =====================
 * This application makes for controlling over- and under voltage. Also
 * temperature controlling and cooler controlling in Power Supply Device 
 * which transforms +12V DC to 220V AC in field conditions. 
 *  
 * ***********************************
 * System clock is configured to 4MHz
 * ***********************************
 *
 *
 */

#include <xc.h>
#include <stdint.h>
#include "interrupt.h"
#include "init_periphery.h"
#include "sounds.h"

#define _XTAL_FREQ   4000000

//#define SIMULATION

#ifndef SIMULATION
// CONFIG
#pragma config FOSC  = INTRCIO     // Oscillator Selection bits (INTOSC oscillator: I/O function on GP4/OSC2/CLKOUT pin, I/O function on GP5/OSC1/CLKIN)
#pragma config WDTE  = OFF         // Watchdog Timer Enable bit (WDT enabled)
#pragma config PWRTE = OFF         // Power-Up Timer Enable bit (PWRT disabled)
#pragma config MCLRE = ON          // GP3/MCLR pin function select (GP3/MCLR pin function is MCLR)
#pragma config BOREN = ON          // Brown-out Detect Enable bit (BOD enabled)
#pragma config CP    = OFF         // Code Protection bit (Program Memory code protection is disabled)
#pragma config CPD   = OFF         // Data Code Protection bit (Data memory code protection is disabled)

#else 
// Config word
__CONFIG(FOSC_INTRCIO & WDTE_OFF & PWRTE_ON & MCLRE_OFF & BOREN_ON & CP_OFF & CPD_OFF);

#endif

uint8_t  pwmValue    = 0;
uint16_t adcValue    = 0;

uint8_t  measureFlag = 1;
uint8_t  tempError   = 0;

// Main function
void main()
{	
    InitTimer0(); 
    Init_uC();
    MuxVoltage();
    
    while(1){ 
   
  
     if (ADIF == 1){      
      
      switch (measureFlag){
      
       case VOLTAGE_MEASURE: 
  
        adcValue = (uint16_t) ((ADRESH << 8) + ADRESL); /* ADC result */    
  
	    if ((adcValue > 190) && (adcValue < 285) && (tempError != 1)){
           GP5 = 0;
           }  	
        else if (adcValue <= 190) { 
           GP5 = 1; 
	     TwoShortOneLong();   
           }
	    else if (adcValue >= 285){
           GP5 = 1;
	     TwoShortTwoLong();  
           }    
          MuxTemp();
        break;
	
	
	    case TEMPERATURE_MEASURE:

	      adcValue = (uint16_t) ((ADRESH << 8) + ADRESL);
	
            if (adcValue < 200)  
	        {
		      GP5       = 1;  
                      pwmValue  = 0; 
		      tempError = 1;     
		  }
                
             else if ((adcValue >= 200) && (adcValue < 880)){ 
                        pwmValue  = 0;
			tempError = 0;
                       }
             else if ((adcValue >= 880) && (adcValue < 910)){ 
                        pwmValue  = 30;
			tempError = 0;
                       }
             else if ((adcValue >= 910) && (adcValue < 940)){ 
                        pwmValue  = 45;
			tempError = 0;
                       }
             else if ((adcValue >= 940) && (adcValue < 970)){ 
                        pwmValue  = 55;
                        tempError = 0;   			
                       }
             else  {
	                GP5       = 1;
                        pwmValue  = 85;
                        tempError = 1;  			
			ThreeShort();
		   }
	 MuxVoltage();
	break;
	
	default:
	break;
	}  
     }
 
 }


 
    
}

