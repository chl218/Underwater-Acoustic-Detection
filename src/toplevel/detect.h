#ifndef _DETECT_H_
#define _DETECT_H_

#include "definitions.h"

void detect(DSTREAM_FLO &signals, DTYPE_FLO threshold, DTYPE_INT &hits,
			DSTREAM_FLO &sig, DSTREAM_INT &loc);

#endif
