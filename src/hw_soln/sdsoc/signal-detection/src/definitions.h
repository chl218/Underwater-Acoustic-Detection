/*
 * definitions.h
 *
 *  Created on: Jun 4, 2017
 *      Author: Jack
 */


#ifndef SRC_DEFINITIONS_H_
#define SRC_DEFINITIONS_H_

#include <stdio.h>
#include "sds_lib.h"

static const int DURATION  = 60;
static const int FREQUENCY = 2000;
static const int FACTOR    = 5;

static const int SAMPLES  = DURATION*FREQUENCY;
static const int STRIDE   = FREQUENCY*(0.002);
static const int MAXPEAKS = DURATION/60 * 10;


#endif /* SRC_DEFINITIONS_H_ */
