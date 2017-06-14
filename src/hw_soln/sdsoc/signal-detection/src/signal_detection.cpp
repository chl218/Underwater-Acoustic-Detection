/*
 * signal_detection.cpp
 *
 *  Created on: Jun 4, 2017
 *      Author: Jack
 */


#include "signal_detection.h"

void duplicate(float dat_i[SAMPLES], float dup1[SAMPLES], float dup2[SAMPLES],
									 float dup3[SAMPLES], float dup4[SAMPLES]) {
   for(int i = 0; i < SAMPLES; i++) {
#pragma HLS PIPELINE II=1
      float val = dat_i[i];
      dup1[i] = val;
      dup2[i] = val;
      dup3[i] = val;
      dup4[i] = val;
   }
}

void invert_neg(float signal_i[SAMPLES], float signal_o[SAMPLES]) {
   for(int i = 0; i < SAMPLES; i++) {
#pragma HLS PIPELINE II=1
      float val = signal_i[i];
      signal_o[i] = val < 0 ? 0 : val;
   }
}

void compute_threshold(float signal_i[SAMPLES], float& threshold){
   float sum = 0.0;
   for(int i = 0; i < SAMPLES; i++) {
#pragma HLS PIPELINE II=1
      sum += signal_i[i];
   }
   threshold = (float)FACTOR * (float)(sum/(SAMPLES + 0.0));
   fprintf(stdout, "ACCEL:\tSAMPLES   = %d\n", SAMPLES);
   fprintf(stdout, "ACCEL:\tsum       = %f\n", sum);
   fprintf(stdout, "ACCEL:\tmean      = %f\n", (float)(sum/(SAMPLES + 0.0)));
   fprintf(stdout, "ACCEL:\tthreshold = %f\n", threshold);
}

void filter_noise(float signal_i[SAMPLES], float threshold, float signal_o[SAMPLES]) {
	for(int i = 0; i < SAMPLES; i++) {
#pragma HLS PIPELINE II=1
		float val = signal_i[i];
		signal_o[i] = val > threshold ? val : 0;
	}
}

void findpeaks(float samples[SAMPLES],
			   float minPeakHeight,
			   int   peak_locs[MAXPEAKS],
			   int&  peak_count) {
   peak_count = 0;
   for(int i = 1; i < SAMPLES-1; i++) {
#pragma HLS PIPELINE II=1
	  if(samples[i] > minPeakHeight) {
		 if(samples[i-1] < samples[i] && samples[i] > samples[i+1]) {
			peak_locs[peak_count] = i;
			peak_count++;
		 }
	  }
   }
}

void parse(float signal_i[SAMPLES],
		   int pks,
		   int loc[MAXPEAKS],
		   int& candidates,
		   float signal_o[SAMPLES]) {

   candidates = 0;
   int index = 0;
   for(int i = 1; i < pks-1; i++) {
#pragma HLS PIPELINE II=1
	  int loc_prev = loc[i-1];
	  int loc_curr = loc[i];
	  int loc_next = loc[i+1];

	  //printf("stride:%4d prev:%4d curr:%4d next:%4d\n", STRIDE, loc_prev, loc_curr, loc_next);
	  if(loc_curr - loc_prev > STRIDE && loc_next - loc_curr > STRIDE) {
		 candidates++;

		 int location = loc[i];
		 int b = location - STRIDE - 1;
		 int e = location + STRIDE;

		 if(b < 0)        b = 0;
		 if(e > SAMPLES-1) e = SAMPLES-1;

		 printf("%4d --> %4d\n", b, e);
		 while(b < e) {
			signal_o[index] = signal_i[b];
			b++;
			index++;
		 }
	  }
   }
}

void detect_calls(float dat_i[SAMPLES], int& hits_o, float res_o[SAMPLES]) {
#pragma HLS DATAFLOW

   float* dup1 = (float*)sds_alloc(SAMPLES * sizeof(float));
   float* dup2 = (float*)sds_alloc(SAMPLES * sizeof(float));
   float* dup3 = (float*)sds_alloc(SAMPLES * sizeof(float));
   float* dup4 = (float*)sds_alloc(SAMPLES * sizeof(float));
   float* pos_dat = (float*)sds_alloc(SAMPLES * sizeof(float));
   float thres;
   float* filtered_dat = (float*)sds_alloc(SAMPLES * sizeof(float));
   int* peak_locs = (int*)sds_alloc(SAMPLES * sizeof(int));
   int peak_counts;

   duplicate(dat_i, dup1, dup2, dup3, dup4);
   invert_neg(dup1, pos_dat);
   compute_threshold(pos_dat, thres);
   filter_noise(dup2, thres, filtered_dat);
   findpeaks(filtered_dat, thres, peak_locs, peak_counts);
   printf("ACCEL:\tpeaks     = %d\n", peak_counts);
   parse(dup4, peak_counts, peak_locs, hits_o, res_o);
   printf("ACCEL:\thits      = %d\n", hits_o);
}
