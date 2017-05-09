#include "running_threshold.h"


void running_threshold(DSTREAM_FLO &amplitude, DSTREAM_FLO &threshold){

	DTYPE_FLO mean = 0.0;
	for(int i = 0; i < SAMPLES; i++) {
#pragma HLS PIPELINE II=1
		mean += amplitude.read() * MAGNIFY;
	}

	threshold.write(mean/SAMPLES);

}
