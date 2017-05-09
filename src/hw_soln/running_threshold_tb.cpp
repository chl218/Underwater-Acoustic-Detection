#include <stdio.h>		// for printf
#include <stdlib.h>		// for srand
#include <time.h>		// for time

#include "running_threshold.h"

void populate_input(DTYPE_FLO arr[SAMPLES], DSTREAM_FLO &stream_i) {
	// Seed RNG
	srand (static_cast <unsigned> (time(0)));

	// RNG range
	static int LO = 0.0;
	static int HI = 5.0;

	for(int i = 0; i < SAMPLES; i++) {
		float top  = LO + static_cast <float> (rand());
		float bot  = static_cast <float> (RAND_MAX/(HI-LO));
		arr[i] = top/bot ;
		stream_i.write(arr[i]);
	}
}

float golden_threshold(DTYPE_FLO arr[SAMPLES]) {

	float mean = 0.0;
	for(int i = 0; i < SAMPLES; i++) {
		mean += arr[i];
	}
	return (MAGNIFY*mean) / SAMPLES;

}

int main() {

	DTYPE_FLO 	input_amp[SAMPLES];

	DSTREAM_FLO	stream_i;
	DSTREAM_FLO stream_o;

	populate_input(input_amp, stream_i);


	float golden_soln = golden_threshold(input_amp);

	running_threshold(stream_i, stream_o);

	float actual_threshold = stream_o.read();
	if(abs(actual_threshold - golden_soln) < 0.00001) {
		printf("PASS: output matches golden solution\n");
		return 0;
	}
	else {
		printf("FAILED: output does not match golden solution\n");
		printf("expected threshold: %3.5f\n", golden_soln);
		printf("actual   threshold: %3.5f\n", actual_threshold);
		return -1;
	}






	return 0;
}
