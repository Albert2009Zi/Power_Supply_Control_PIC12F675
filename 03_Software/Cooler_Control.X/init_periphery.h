/* 
 * File:   init_periphery.h
 * Author: Albert Ziatdinov
 *
 * 
 */

#ifndef INIT_PERIPHERY_H
#define	INIT_PERIPHERY_H

#include <stdint.h>

#define VOLTAGE_MEASURE     1
#define TEMPERATURE_MEASURE 2

void InitTimer0(void);

void Init_uC(void);

void MuxVoltage(void);

void MuxTemp(void);

#endif	/* INIT_PERIPHERY_H */

