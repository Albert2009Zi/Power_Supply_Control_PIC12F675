/* 
 * File:   ADC.h
 * Author: Albert Ziatdinov
 *
 * 
 */

#ifndef ADC_H
#define	ADC_H

#include <stdint.h>

void Init_uC(void);

void ButtonEvent (void);

void Pin7ThermoControl (void);

void Pin6VoltageControl (void);

uint16_t MeasureTemp(void);

uint16_t MeasureVoltage(void);

#endif	/* ADC_H */

