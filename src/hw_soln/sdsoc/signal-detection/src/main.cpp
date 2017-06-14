/*
 * main.cpp
 *
 *  Created on: Jun 4, 2017
 *      Author: Jack
 */

#include <stdio.h>
#include <stdlib.h>
#include <string>
using namespace std;


#include "signal_detection.h"

int main() {

   FILE *fp;
   float* dat_i = (float*)sds_alloc(SAMPLES * sizeof(float));
   int   hits_o;
   float* res_o = (float*)sds_alloc(SAMPLES * sizeof(float));

   if(!dat_i || !res_o) {
	   if(dat_i) sds_free(dat_i);
	   if(res_o) sds_free(res_o);
	   printf("ERROR: sds_alloc failed.\n");
	   exit(1);
   }

   fp = fopen("audio.dat", "r");
   float val;

   if(!fp) {
	   printf("ERROR: fopen failed.\n");
	   exit(1);
   }

   int i = 0;
   while(i++ < SAMPLES) {
      if(!fscanf(fp, "%f", &val)) {
    	  break;
      }
      dat_i[i] =  val;
   }
   fclose(fp);
   
   detect_calls(dat_i, hits_o, res_o);

   char filename[128];
   memset(filename, '\0', 64);

   for(int i = 0; i < hits_o; i++) {
      sprintf(filename, "file_%d.dat", i);
      fp = fopen(filename, "w");
      
      int from = i * 2*STRIDE;
      int to   = i * 2*STRIDE + 2*STRIDE;

      for(int j = from; j < to; j++) {
         fprintf(fp, "%f\n", res_o[j])
      }
      fclose(fp);
   }

   sds_free(dat_i);
   sds_free(res_o);
   return 0;
}


