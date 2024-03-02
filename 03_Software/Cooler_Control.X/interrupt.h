/* 
 * File:   interrupt.h
 * Author: User
 *
 * Created on 28 ??????? 2022 ?., 16:38
 */

#ifndef INTERRUPT_H
#define	INTERRUPT_H

void __interrupt() ISR(void);

void MuxVoltage(void);

void MuxTemp(void);

#endif	/* INTERRUPT_H */

