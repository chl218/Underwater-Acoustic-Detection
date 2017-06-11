#include "filter_noise.h"

void filter_noise(DSTREAM_FLO &stream_i, DTYPE_FLO threshold, DSTREAM_FLO &stream_o) {
	Filter_Noise: for(int i = 0; i < SAMPLES; i++) {
#pragma HLS PIPELINE II=1
		DTYPE_FLO val = stream_i.read();
		//printf("%f %f\n", threshold, val);
		stream_o.write(val > threshold ? val : 0);
	}
}
