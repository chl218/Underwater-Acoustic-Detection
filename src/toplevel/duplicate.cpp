#include "duplicate.h"


void duplicate(DSTREAM_FLO &dat_i, DSTREAM_FLO &dat_1_o, DSTREAM_FLO &dat_2_o,
                           DSTREAM_FLO &dat_3_o, DSTREAM_FLO &dat_4_o) {
   for(int i = 0; i < SAMPLES; i++) {
#pragma HLS PIPELINE II=1
      DTYPE_FLO val = dat_i.read();
      dat_1_o.write(val);
      dat_2_o.write(val);
      dat_3_o.write(val);
      dat_4_o.write(val);
   }
}
