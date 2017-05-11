#include <stdio.h>			// for printf
#include <stdlib.h>			// for srand
#include <time.h>			// for time
#include <queue>          // std::queue


#include "signal_hits.h"


void populate_inputs(DTYPE_FLO signals[SAMPLES], DSTREAM_FLO &stream_i) {

	// Seed RNG
	srand (static_cast <unsigned> (time(0)));

	// RNG range
	static int LO = 0.0;
	static int HI = 5.0;

	for(int i = 0; i < SAMPLES; i++) {
		float top  = LO + static_cast <float> (rand());
		float bot  = static_cast <float> (RAND_MAX/(HI-LO));
		signals[i] = top/bot ;
		stream_i.write(signals[i]);
	}


}

void golden_signal_hits(DTYPE_FLO threshold,
					    DTYPE_FLO signals[SAMPLES],
						std::queue<float> &hits,
						std::queue<int>   &locs) {

	for(int i = 0; i < SAMPLES; i++) {
		if(signals[i] > threshold) {
			hits.push(signals[i]);
			locs.push(i);
		}
	}
}

int check_results(std::queue<int>   &gloc,
		   	   	  std::queue<float> &ghit,
				  std::queue<int>   &aloc,
				  std::queue<float> &ahit) {

	if(gloc.size() != aloc.size()) return -1;
	if(ghit.size() != ahit.size()) return -1;

	while(!gloc.empty() && !aloc.empty()) {
		if(gloc.front() != aloc.front()) {
			return -1;
		}
		gloc.pop();
		aloc.pop();
	}

	while(!ghit.empty() && !ahit.empty()) {
		if(ghit.front() != ghit.front()) {
			return -1;
		}
		ghit.pop();
		ahit.pop();
	}

	return 0;
}

int main() {

	std::queue<float> golden_hits;
	std::queue<int>   golden_locs;

	std::queue<DTYPE_FLO> actual_hits;
	std::queue<DTYPE_INT> actual_locs;

	DTYPE_FLO signals[SAMPLES];
	DTYPE_FLO threshold = 0.0123;

	DSTREAM_FLO signal_stream_i;
	DSTREAM_FLO hits_stream_o;
	DSTREAM_INT locs_stream_o;

	// Populate input for testing
	populate_inputs(signals, signal_stream_i);

	// Software solution
	golden_signal_hits(threshold, signals, golden_hits, golden_locs);

	// Hardware solution
	signal_hits(threshold, signal_stream_i, hits_stream_o, locs_stream_o);

	while(!hits_stream_o.empty()) {
		actual_hits.push(hits_stream_o.read());
		actual_locs.push(locs_stream_o.read());
	}


	int result = check_results(golden_locs, golden_hits, actual_locs, actual_hits);
	if(result) {
		printf("FAILED");
		return -1;
	}
	else {
		printf("PASSED");
		return 0;
	}
}
