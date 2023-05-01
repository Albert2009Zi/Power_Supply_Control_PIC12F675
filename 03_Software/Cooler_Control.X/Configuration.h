/* 
 * File:   Configuration.h
 * Author: Albert Ziatzdinov
 *
 * Created on 23 ?????? 2021 ?., 22:50
 */

#ifndef CONFIGURATION_H
#define	CONFIGURATION_H

#ifdef	__cplusplus
extern "C" {
#endif

#pragma config FOSC  = INTRCIO     // Oscillator Selection bits (INTOSC oscillator: I/O function on GP4/OSC2/CLKOUT pin, I/O function on GP5/OSC1/CLKIN)
#pragma config WDTE  = ON          // Watchdog Timer Enable bit (WDT enabled)
#pragma config PWRTE = ON          // Power-Up Timer Enable bit (PWRT enabled)
#pragma config MCLRE = OFF         // GP3/MCLR pin function select (GP3/MCLR pin function is MCLR)
#pragma config BOREN = ON          // Brown-out Detect Enable bit (BOD enabled)
#pragma config CP    = OFF         // Code Protection bit (Program Memory code protection is disabled)
#pragma config CPD   = OFF         // Data Code Protection bit (Data memory code protection is disabled)



#ifdef	__cplusplus
}
#endif

#endif	/* CONFIGURATION_H */

