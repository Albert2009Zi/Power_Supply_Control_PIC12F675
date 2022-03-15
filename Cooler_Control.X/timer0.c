#include "timer0.h"
#include <xc.h>

void initTimer0(void)
{
	// Timer0 is 8bit timer, select T0CS and PSA to be one
	OPTION_REG &= 0xC0;     // Make Prescalar 1:2
	T0IE = 1;				// Enable Timer0 interrupt
}