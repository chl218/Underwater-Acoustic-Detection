#ifndef _DEFINITIONS_H_
#define _DEFINITIONS_H_

#include <stdio.h>

#include "hls_stream.h"

typedef int     		   DTYPE_INT;
typedef float 			   DTYPE_FLO;

typedef hls::stream<DTYPE_INT> DSTREAM_INT;
typedef hls::stream<DTYPE_FLO> DSTREAM_FLO;

#define DURATION  60
#define FREQUENCY 2000

#define FACTOR  5
#define SAMPLES FREQUENCY*DURATION

//#define STRIDE FREQUENCY/2
#define STRIDE 4

#endif
