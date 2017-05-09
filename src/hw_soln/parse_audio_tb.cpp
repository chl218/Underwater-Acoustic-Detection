#include <stdio.h>		// for printf
#include <stdlib.h>		// for srand
#include <time.h>		// for time

#include "parse_audio.h"


void populate_signal(DSTREAM_FLO &signal) {
	// Seed RNG
	srand (static_cast <unsigned> (time(0)));

	// RNG range
	static int LO = 0.0;
	static int HI = 5.0;

	for(int i = 0; i < SAMPLES; i++) {
		float top  = LO + static_cast <float> (rand());
		float bot  = static_cast <float> (RAND_MAX/(HI-LO));
		signal.write(top/bot);
	}
}

void populate_candidates(DSTREAM_FLO &hits, DSTREAM_INT &locs) {
	// Seed RNG
	srand (static_cast <unsigned> (time(0)));

	// RNG range
	static int LO = 0.0;
	static int HI = 5.0;

	for(int i = 0; i < SAMPLES/2; i++) {
		float top  = LO + static_cast <float> (rand());
		float bot  = static_cast <float> (RAND_MAX/(HI-LO));
		hits.write(top/bot);
		locs.write(i);
	}
}

int main() {

	DSTREAM_FLO signals_i;
	DSTREAM_FLO hits_i;
	DSTREAM_INT locs_i;
	DSTREAM_STRUCT_PAIR pairs_o;

	parse_audio(signals_i, hits_i, locs_i, pairs_o);

	return 0;
}
