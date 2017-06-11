#include "threshold.h"

void threshold(DSTREAM_FLO &signals, DTYPE_FLO &threshold){
   DTYPE_FLO sum = 0.0;
   for(int i = 0; i < SAMPLES; i++) {
#pragma HLS PIPELINE II=1
      sum += signals.read();
   }
   threshold = (float)FACTOR * (float)(sum/(SAMPLES + 0.0));
   fprintf(stdout, "ACCEL:\tSAMPLES   = %d\n", SAMPLES);
   fprintf(stdout, "ACCEL:\tsum       = %f\n", sum);
   fprintf(stdout, "ACCEL:\tmean      = %f\n", (float)(sum/(SAMPLES + 0.0)));
   fprintf(stdout, "ACCEL:\tthreshold = %f\n", threshold);
}
