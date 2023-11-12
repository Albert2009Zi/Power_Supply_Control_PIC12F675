/* 
 * File:   interrupt.h
 * Author: Albert Ziatdinov
 *
 */

#ifndef INTERRUPT_H
#define	INTERRUPT_H

#include <xc.h>
#include <stdint.h>

void __interrupt() ISR(void);

#endif	/* INTERRUPT_H */

