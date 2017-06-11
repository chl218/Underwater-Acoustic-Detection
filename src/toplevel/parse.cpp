#include "parse.h"

void parse(DSTREAM_FLO& sig_i,
          DTYPE_INT    pks,
         DSTREAM_INT& loc,
         DTYPE_INT&   candidates,
         DSTREAM_FLO& sig_o) {

   candidates = 0;
   DTYPE_INT buf[3] = {0.0};

   DTYPE_INT val_read = 0;

   for(int i = 0; i < pks; i++) {

      buf[2] = buf[1];
      buf[1] = buf[0];
      buf[0] = loc.read();

      if(buf[1] - buf[2] > STRIDE && buf[0] - buf[1] > STRIDE) {
         candidates++;

         int location = buf[1];
         int b = location - STRIDE - 1;
         int e = location + STRIDE;

         if(b < 0)        b = 0;
         if(e > SAMPLES-1) e = SAMPLES-1;

         printf("%4d --> %4d\n", b, e);

         while(val_read++ < b) sig_i.read();
         while(b++ < e) {
            sig_o.write(sig_i.read());
            val_read++;
         }
      }
   }

   while(!sig_i.empty()) sig_i.read();
}
