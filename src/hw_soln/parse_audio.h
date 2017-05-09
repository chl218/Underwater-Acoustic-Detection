#ifndef _PARSE_AUDIO_H_
#define _PARSE_AUDIO_H_

#include <ap_int.h>
#include <hls_stream.h>

typedef int     		   DTYPE_INT;
typedef float 			   DTYPE_FLO;

typedef hls::stream<DTYPE_INT> DSTREAM_INT;
typedef hls::stream<DTYPE_FLO> DSTREAM_FLO;

typedef struct {
	DSTREAM_FLO amplitude;
	DSTREAM_INT duration;
} DSTREAM_STRUCT_PAIR;

#define DURATION  60
#define FREQUENCY 2000
#define SAMPLES   FREQUENCY*DURATION

#define CALL_DURATION 5
#define MAX_CALLS     DURATION/CALL_DURATION
#define MAX_DURATION  FREQUENCY*CALL_DURATION

void parse_audio(DSTREAM_FLO &signals,
				 DSTREAM_FLO &hits,
			     DSTREAM_INT &locs,
		   	     DSTREAM_STRUCT_PAIR &pairs);

#endif
