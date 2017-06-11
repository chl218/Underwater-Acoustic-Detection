#include "detect.h"

void detect(DSTREAM_FLO &signals, DTYPE_FLO threshold, DTYPE_INT &hits,
			DSTREAM_FLO &sig, DSTREAM_INT &loc) {

	hits = 0;
	for(int i = 0; i < SAMPLES; i++) {
#pragma HLS PIPELINE II=1
		DTYPE_FLO currAmp = signals.read();
		if(currAmp > threshold) {
			hits++;
			sig.write(currAmp);
			loc.write(i);
		}
	}
}
