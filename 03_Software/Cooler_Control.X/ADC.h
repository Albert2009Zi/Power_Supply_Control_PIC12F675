/* 
 * File:   ADC.h
 * Author: Albert Ziatdinov
 *
 * 
 */

#ifndef ADC_H
#define	ADC_H

void Init_uC(void);

void ButtonEvent (void);

void Pin7ThermoControl (void);

void Pin6VoltageControl (void);

int  MeasureTemp(void);

int  MeasureVoltage(void);

#endif	/* ADC_H */

