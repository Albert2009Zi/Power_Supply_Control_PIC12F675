/* 
 * File:   interrupt.h
 * Author: User
 *
 * Created on 28 ??????? 2022 ?., 16:38
 */

#ifndef INTERRUPT_H
#define	INTERRUPT_H

#define ERROR_OK            1
#define ERROR_UNDER_VOLTAGE 2
#define ERROR_OVER_VOLTAGE  3
#define ERROR_TMP_INPUT     4
#define ERROR_TMP_HIGH      5

void MuxVoltage(void);

void MuxTemp(void);

void __interrupt() ISR(void);

void ADCProcessing(void);

#endif	/* INTERRUPT_H */

