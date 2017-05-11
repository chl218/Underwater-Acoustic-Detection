#ifndef _PEAKS_H_
#define _PEAKS_H_

#include <ap_int.h>
#include <hls_stream.h>

typedef int     		   DTYPE_INT;
typedef float 			   DTYPE_FLO;

typedef hls::stream<DTYPE_INT> DSTREAM_INT;
typedef hls::stream<DTYPE_FLO> DSTREAM_FLO;


#define DURATION  60
#define FREQUENCY 2000
#define SIZE      FREQUENCY*DURATION

void peaks(DSTREAM_FLO &signals,
		   DSTREAM_FLO &amplitude,
		   DSTREAM_INT &locations);

#endif
