#ifndef _FINDPEAKS_H_
#define _FINDPEAKS_H_

#include "definitions.h"

void findpeaks(DSTREAM_FLO& samples,
			   DTYPE_FLO    min_peak_height,
			   //DSTREAM_FLO& peaks,
			   DSTREAM_INT& peak_locs,
			   DTYPE_INT&   peak_count);

#endif
