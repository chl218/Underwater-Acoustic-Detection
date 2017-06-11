#include "toplevel.h"


void detect_calls(DSTREAM_FLO &dat_i, DTYPE_INT &hits_o, DSTREAM_FLO &res_o) {
#pragma HLS DATAFLOW

   DSTREAM_FLO dup1, dup2, dup3, dup4;
   duplicate(dat_i, dup1, dup2, dup3, dup4);

   DSTREAM_FLO pos_dat;
   pos_signals(dup1, pos_dat);

   DTYPE_FLO thres;
   threshold(pos_dat, thres);

   DSTREAM_FLO filtered_dat;
   filter_noise(dup2, thres, filtered_dat);

   //DSTREAM_FLO peaks;
   DSTREAM_INT peak_locs;
   DTYPE_INT peak_counts;
   findpeaks(filtered_dat, thres, peak_locs, peak_counts);
   printf("ACCEL:\tpeaks     = %d\n", peak_counts);

   parse(dup4, peak_counts, peak_locs, hits_o, res_o);
   printf("ACCEL:\thits      = %d\n", hits_o);

}
