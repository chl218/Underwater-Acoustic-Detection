#ifndef _RUNNING_THRESHOLD_H_
#define _RUNNING_THRESHOLD_H_

#include <ap_int.h>
#include <hls_stream.h>

typedef int     		   DTYPE_INT;
typedef float 			   DTYPE_FLO;

typedef hls::stream<DTYPE_FLO> DSTREAM_FLO;

#define DURATION  60
#define FREQUENCY 2000
#define MAGNIFY   5
#define SAMPLES   FREQUENCY*DURATION

void running_threshold(DSTREAM_FLO &amplitude, DSTREAM_FLO &threshold);

#endif
