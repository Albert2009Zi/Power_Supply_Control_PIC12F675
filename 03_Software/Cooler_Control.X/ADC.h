/* 
 * File:   ADC.h
 * Author: Albert Ziatdinov
 *
 * 
 */

#ifndef ADC_H
#define	ADC_H

#include <xc.h>
#include "sounds.h"
#include <stdint.h>

#define _XTAL_FREQ   4000000 

void Init_uC(void);

void ButtonEvent (void);

void Pin7ThermoControl (void);

void Pin6VoltageControl (void);

uint16_t  MeasureTemp(void);

uint16_t  MeasureVoltage(void);

#endif	/* ADC_H */

