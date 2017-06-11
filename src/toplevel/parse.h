#ifndef _PARSE_H_
#define _PARSE_H_

#include "definitions.h"

void parse(DSTREAM_FLO& sig_i,
	       DTYPE_INT    pks,
		   DSTREAM_INT& loc,
		   DTYPE_INT&   candidates,
		   DSTREAM_FLO& sig_o);

#endif
