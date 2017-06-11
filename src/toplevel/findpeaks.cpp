#include "findpeaks.h"

void findpeaks(DSTREAM_FLO &samples,
            DTYPE_FLO    min_peak_height,
            //DSTREAM_FLO& peaks,
            DSTREAM_INT& peak_locs,
            DTYPE_INT&   peak_count) {

   peak_count = 0;

   DTYPE_FLO shift_buf[3] = {0};
#pragma HLS ARRAY_PARTITION variable=shift_buf complete dim=1

   Local_Maxima: for(int i = 0; i < SAMPLES; i++) {
#pragma HLS PIPELINE II=1

      shift_buf[2] = shift_buf[1];
      shift_buf[1] = shift_buf[0];
      shift_buf[0] = samples.read();

      if(shift_buf[2] < shift_buf[1] && shift_buf[1] > shift_buf[0]) {
         //peaks.write(shift_buf[1]);
         peak_locs.write(i);
         peak_count++;
      }
   }
}
