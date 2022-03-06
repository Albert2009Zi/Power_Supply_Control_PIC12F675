#include <xc.h>
#include "interrupt.h"
#include "ADC.h"
#include "timer0.h"

// Config word
__CONFIG(FOSC_INTRCIO & WDTE_OFF & PWRTE_ON & MCLRE_OFF & BOREN_ON & CP_OFF & CPD_OFF);

// Main function
void main()
{	
	InitTimer0();
    Init_uC();
    ei();
	while(1)
	{     
	}
}

