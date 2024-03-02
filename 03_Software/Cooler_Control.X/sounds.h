#ifndef SOUNDS_H
#define	SOUNDS_H

#include <stdint.h>

#define ERROR_OK            1
#define ERROR_UNDER_VOLTAGE 2
#define ERROR_OVER_VOLTAGE  3
#define ERROR_TMP_INPUT     4
#define ERROR_TMP_HIGH      5

/*****Sounds and pauses*****/
void ShortSound(void);

void LongSound(void);

void TimeOut(void);

/***********Alarms*********/
void TwoShortOneLong(void);

void TwoShortTwoLong(void);

void ThreeShort(void);

#endif	/* SOUNDS_H */

