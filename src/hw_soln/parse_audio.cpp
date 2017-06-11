#include "parse.h"


void buffer_signal(DSTREAM_FLO &signals, DTYPE_FLO amp_buf[MAX_DURATION]) {

	for(int i = 0; i < MAX_DURATION; i++) {
#pragma HLS PIPELINE II=1
		amp_buf[i++] = signals.read();
	}
}

void buffer_target(DSTREAM_FLO &hits,
				   DSTREAM_INT &locs,
				   DTYPE_FLO hit_buf[MAX_CALLS],
				   DTYPE_INT loc_buf[MAX_CALLS]) {

	for(int i = 0; i < MAX_CALLS; i++) {
#pragma HLS PIPELINE II=1
		hit_buf[i] = hits.read();
		loc_buf[i] = locs.read();
	}
}

void parse_signal(DTYPE_FLO signal[MAX_DURATION],
				  DTYPE_FLO hits[MAX_CALLS],
				  DTYPE_INT locs[MAX_CALLS],
				  DSTREAM_STRUCT_PAIR &pairs) {

	DTYPE_INT duration;
	for(int i = 0; i < MAX_CALLS; i++) {
		for(int j = i; j < MAX_CALLS; j++) {
			duration = 1;
			for(int b = locs[i], e = locs[j]; b < e; b++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=144

				pairs.amplitude.write(signal[b]);
				duration++;
			}
			pairs.duration.write(duration);
		}
	}
}

void parse_audio(DSTREAM_FLO &signals,
				 DSTREAM_FLO &hits,
			     DSTREAM_INT &locs,
		   	     DSTREAM_STRUCT_PAIR &pairs) {
#pragma HLS DATAFLOW

	DTYPE_FLO sig_buf[MAX_DURATION];
	DTYPE_FLO hit_buf[MAX_CALLS];
	DTYPE_INT loc_buf[MAX_CALLS];

	buffer_signal(signals, sig_buf);
	buffer_target(hits, locs, hit_buf, loc_buf);
	parse_signal(sig_buf, hit_buf, loc_buf, pairs);

}
