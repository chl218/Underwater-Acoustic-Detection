#include "peaks.h"

void peaks(DSTREAM_FLO &samples,
		   DSTREAM_FLO &amplitude,
		   DSTREAM_INT &locations) {

	DTYPE_FLO shift_buf[3] = {0};
#pragma HLS ARRAY_PARTITION variable=shift_buf complete dim=1

	Local_Maxima: for(int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE II=1

		shift_buf[2] = shift_buf[1];
		shift_buf[1] = shift_buf[0];
		shift_buf[0] = samples.read();

		if(shift_buf[2] < shift_buf[1] && shift_buf[1] > shift_buf[0]) {
			locations.write(i);
			amplitude.write(shift_buf[1]);
		}
	}

}
