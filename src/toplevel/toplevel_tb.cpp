#include <stdio.h>         // for printf
#include <stdlib.h>        // for srand
#include <time.h>       // for time
#include <queue>          // std::queue

#include "toplevel.h"


//==============================================================================
// Software Golden Solution
//==============================================================================

// find peaks
void golden_findpeaks(float*& samples,
                 float   minPeakHeight,
                  float*& peaks,
                  int*&   peak_locs,
                 int&    peak_count) {
   peak_count = 0;
   for(int i = 1; i < SAMPLES-1; i++) {
      if(samples[i] > minPeakHeight) {
         if(samples[i-1] < samples[i] && samples[i] > samples[i+1]) {
            peaks[peak_count]     = samples[i];
            peak_locs[peak_count] = i;
            peak_count++;
         }
      }
   }
}

// parse signals
void golden_parse(float*& sig_i,
                int     pks,
              int*&   loc,
              int&    candidates,
              float*& sig_o) {

   candidates = 0;
   int index = 0;
   for(int i = 1; i < pks-1; i++) {

      int loc_prev = loc[i-1];
      int loc_curr = loc[i];
      int loc_next = loc[i+1];

      if(loc_curr - loc_prev > STRIDE && loc_next - loc_curr > STRIDE) {
         candidates++;

         int location = loc[i];
         int b = location - STRIDE - 1;
         int e = location + STRIDE;

         if(b < 0)        b = 0;
         if(e > SAMPLES-1) e = SAMPLES-1;

         printf("%4d --> %4d\n", b, e);
         while(b < e) {
            sig_o[index] = sig_i[b];
            b++;
            index++;
         }
      }
   }
}

// software golden solution
void golden_soln(float *& samples, int &hits, float *& res) {
   printf("TB:\tSAMPLES   = %d\n", SAMPLES);

   // Filter negative value signals
   float *pos_dat = (float*)malloc(sizeof(float) * SAMPLES);
   for(int i = 0; i < SAMPLES; i++) {
      pos_dat[i] = samples[i] < 0 ? 0 : samples[i];
   }

   // Compute Threshold
   float sum = 0.0;
   for(int i = 0; i < SAMPLES; i++) {
      sum += pos_dat[i];
   }
   printf("TB:\tsum       = %f\n", sum);
   printf("TB:\tmean      = %f\n", (float)(sum/(SAMPLES + 0.0)));

   float threshold = (float)FACTOR*(float)(sum/(SAMPLES + 0.0));
   printf("TB:\tthreshold = %f\n", threshold);


   // Filter Noise
   float* filtered = (float*)malloc(sizeof(float) * SAMPLES);
   for(int i = 0; i < SAMPLES; i++) {
      filtered[i] = pos_dat[i] > threshold ? pos_dat[i] : 0;
   }

   // Find peaks of signals
   float* peaks = (float*)malloc(sizeof(float) * SAMPLES);
   int* peak_locs = (int*)malloc(sizeof(int) * SAMPLES);
   int peak_counts = 0;
   golden_findpeaks(filtered, threshold, peaks, peak_locs, peak_counts);
   printf("TB:\tpeaks     = %d\n", peak_counts);

   // Parse audio
   golden_parse(samples, peak_counts, peak_locs, hits, res);
   printf("TB:\tcandidate = %d\n", hits);

   free(filtered);
   free(peaks);
   free(peak_locs);
}


//==============================================================================
// Test Bench
//==============================================================================
int main() {

   float *signals = (float *) malloc(sizeof(float) * SAMPLES);
   FILE *fd;

   DSTREAM_FLO dat_i;
   DTYPE_INT   hits_o;
   DSTREAM_FLO res_o;

   fd = fopen("audio.dat", "r");
   for(int i = 0; i < SAMPLES; i++) {
      fscanf(fd, "%f", &signals[i]);
      dat_i.write(signals[i]);
   }

   int   golden_hits = 0;
   float *golden_res = (float *) malloc(sizeof(float) * SAMPLES);

   // software solution
   golden_soln(signals, golden_hits, golden_res);

   // hardware solution
//   detect_calls(dat_i, hits_o, res_o);


//   for(int i = 0; i < golden_hits; i++) {
//      printf("candidate %d:\n", i);
//      for(int j = 0; j < 2*STRIDE; j+=5) {
//         printf("%.6f %.6f %.6f %.6f %.6f\n", golden_res[j], golden_res[j+1],
//               golden_res[j+2], golden_res[j+3], golden_res[j+4]);
//      }
//      printf("\n");
//   }
//   printf("========================================\n");
//   for(int i = 0; i < hits_o; i++) {
//      printf("candidate %d:\n", i);
//      for(int j = 0; j < 2*STRIDE; j+=5) {
//         printf("%.6f %.6f %.6f %.6f %.6f\n", res_o.read(), res_o.read(),
//               res_o.read(), res_o.read(), res_o.read());
//      }
//      printf("\n");
//   }
//   printf("========================================\n");


   return 0;
}
