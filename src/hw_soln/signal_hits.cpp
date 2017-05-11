#include "signal_hits.h"

void signal_hits(DTYPE_FLO threshold,
				 DSTREAM_FLO &signals,
				 DSTREAM_FLO &hits,
				 DSTREAM_INT &locs) {

	for(int i = 0; i < SAMPLES; i++) {
#pragma HLS PIPELINE II=1
		DTYPE_FLO currAmp = signals.read();
		if(currAmp > threshold) {
			hits.write(currAmp);
			locs.write(i);
		}
	}

}
