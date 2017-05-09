#include <stdio.h>			// for printf
#include <stdlib.h>			// for srand
#include <time.h>			// for time

#include "peaks.h"

void populate_samples(DTYPE_FLO samples[SIZE], DSTREAM_FLO &stream_i) {

	// Seed RNG
	srand (static_cast <unsigned> (time(0)));

	// RNG range
	static int LO = -5.0;
	static int HI =  5.0;

	for(int i = 0; i < SIZE; i++) {
		float top  = LO + static_cast <float> (rand());
		float bot  = static_cast <float> (RAND_MAX/(HI-LO));
		samples[i] = top/bot ;
		stream_i.write(samples[i]);
	}

}

void peaks_golden(DTYPE_FLO samples[SIZE],
				  DTYPE_FLO amplitude[SIZE],
				  DTYPE_INT locations[SIZE]) {

	int peak = 0;

	if(samples[0] > samples[1]) {
		locations[peak] = 0;
		amplitude[peak] = samples[0];
		peak++;
	}

	for(int i = 1; i < SIZE-1; i++) {
		if(samples[i-1] < samples[i] && samples[i] > samples[i+1]) {
			locations[peak] = i;
			amplitude[peak] = samples[i];
			peak++;
		}
	}

	if(samples[SIZE-2] < samples[SIZE-1]) {
		locations[peak] = SIZE - 1;
		amplitude[peak] = samples[SIZE-1];
	}
}

int check_results(DTYPE_FLO expected_amp[SIZE],
			      DTYPE_INT expected_loc[SIZE],
				  DTYPE_FLO actual_amp[SIZE],
				  DTYPE_INT actual_loc[SIZE]) {

	for(int i = 0; i < SIZE; i++) {
		if((expected_amp[i] != actual_amp[i]) ||
		   (expected_loc[i] != actual_loc[i])) {
			return i;
		}
	}

	return 0;
}

void print_sample_signals(DTYPE_FLO samples[SIZE]) {
	for(int i = 0; i < SIZE/5; i++) {
		printf("%3.5f ", samples[i]);
	}
	printf("\n");
}

void print_sample_results(DTYPE_INT loc[SIZE], DTYPE_FLO amp[SIZE]) {
	for(int i = 0; i < SIZE/5; i++) {
		printf("%3d:%3.5f ", loc[i], amp[i]);
	}
	printf("\n");
}

int main() {

	DTYPE_FLO samples[SIZE];
	DTYPE_INT frequency;

	DTYPE_FLO golden_amp[SIZE] = {0.0};
	DTYPE_INT golden_loc[SIZE] = { 0 };

	DTYPE_FLO actual_amp[SIZE] = {0.0};
	DTYPE_INT actual_loc[SIZE] = { 0 };

	DSTREAM_FLO sig_stream_i;
	DSTREAM_FLO amp_stream_o;
	DSTREAM_INT loc_stream_o;

	// Generate random amplitude signals
	populate_samples(samples, sig_stream_i);

	// Print sample signals
	print_sample_signals(samples);

	// Software solution
	peaks_golden(samples, golden_amp, golden_loc);

	// Print sample golden solutions
	print_sample_results(golden_loc, golden_amp);


	// Hardware solution
	peaks(sig_stream_i, amp_stream_o, loc_stream_o);


	// Write output stream to array for testing
	int i = 0;
	while(!amp_stream_o.empty()) {
		actual_amp[i++] = amp_stream_o.read();
	}
	i = 0;
	while(!loc_stream_o.empty()) {
		actual_loc[i++] = loc_stream_o.read();
	}

	// Print sample actual solutions
	print_sample_results(actual_loc, actual_amp);


	// Check result
	int result = check_results(golden_amp, golden_loc, actual_amp, actual_loc);
	if(result) {
		printf("FAILED: output does not match golden solution on ");
		printf("%d-th index\n", result);
		printf("expected amplitude: %3.5f\n", golden_amp[result]);
		printf("expected location:  %3d\n",   golden_loc[result]);
		printf("actual amplitude:   %3.5f\n", actual_amp[result]);
		printf("actual location:    %3d\n",   actual_loc[result]);
		return -1;
	}
	else {
		printf("PASS: output matches golden solution\n");
		return 0;

	}
}
