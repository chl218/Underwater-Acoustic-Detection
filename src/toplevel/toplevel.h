#ifndef _TOPLEVEL_H_
#define _TOPLEVEL_H_

#include "definitions.h"

#include "abs.h"
#include "duplicate.h"
#include "filter_noise.h"
#include "findpeaks.h"
#include "threshold.h"
#include "detect.h"
#include "parse.h"

void detect_calls(DSTREAM_FLO &dat_i, DTYPE_INT &hits, DSTREAM_FLO &res_o);

#endif
