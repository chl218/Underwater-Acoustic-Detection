#ifndef _SIGNAL_HITS_H_
#define _SIGNAL_HITS_H_

#include <ap_int.h>
#include <hls_stream.h>

typedef int     		   DTYPE_INT;
typedef float 			   DTYPE_FLO;

typedef hls::stream<DTYPE_INT> DSTREAM_INT;
typedef hls::stream<DTYPE_FLO> DSTREAM_FLO;

#define DURATION  60
#define FREQUENCY 2000
#define SAMPLES   FREQUENCY*DURATION

void signal_hits(DTYPE_FLO threshold,
				 DSTREAM_FLO &signals,
				 DSTREAM_FLO &hits,
				 DSTREAM_INT &locs);

#endif
