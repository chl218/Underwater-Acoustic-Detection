#include "abs.h"

void pos_signals(DSTREAM_FLO& samples_i, DSTREAM_FLO& samples_o) {
   Absolute: for(int i = 0; i < SAMPLES; i++) {
#pragma HLS PIPELINE II=1
      DTYPE_FLO val = samples_i.read();
      samples_o.write(val < 0 ? 0 : val);
   }
}
