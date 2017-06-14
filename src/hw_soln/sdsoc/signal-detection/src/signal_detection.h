/*
 * signal_detection.h
 *
 *  Created on: Jun 4, 2017
 *      Author: Jack
 */

#ifndef SRC_SIGNAL_DETECTION_H_
#define SRC_SIGNAL_DETECTION_H_

#include "definitions.h"

#pragma SDS data access_pattern(dat_i:SEQUENTIAL, dup1:SEQUENTIAL, dup2:SEQUENTIAL, \
												  dup3:SEQUENTIAL, dup4:SEQUENTIAL)
void duplicate(float dat_i[SAMPLES], float dup1[SAMPLES], float dup2[SAMPLES],
									 float dup3[SAMPLES], float dup4[SAMPLES]);

#pragma SDS data access_pattern(signal_i:SEQUENTIAL, signal_o:SEQUENTIAL)
void invert_neg(float signal_i[SAMPLES], float signal_o[SAMPLES]);

#pragma SDS data access_pattern(signal_i:SEQUENTIAL)
void compute_threshold(float signal_i[SAMPLES], float& threshold);

#pragma SDS data access_pattern(signal_i:SEQUENTIAL, signal_o:SEQUENTIAL)
void filter_noise(float signal_i[SAMPLES], float threshold, float signal_o[SAMPLES]);

#pragma SDS data access_pattern(samples:SEQUENTIAL, peaks:SEQUENTIAL, peak_locs:SEQUENTIAL)
void findpeaks(float samples[SAMPLES],
			   float minPeakHeight,
			   int   peak_locs[MAXPEAKS],
			   int&  peak_count);

#pragma SDS data access_pattern(signal_i:SEQUENTIAL, loc:SEQUENTIAL, signal_o:SEQUENTIAL)
void parse(float signal_i[SAMPLES],
		   int pks,
		   int loc[MAXPEAKS],
		   int& candidates,
		   float signal_o[SAMPLES]);

#pragma SDS data access_pattern(dat_i:SEQUENTIAL, res_o:SEQUENTIAL)
void detect_calls(float dat_i[SAMPLES], int& hits_o, float res_o[SAMPLES]);


#endif /* SRC_SIGNAL_DETECTION_H_ */
