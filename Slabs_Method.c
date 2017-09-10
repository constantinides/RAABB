#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <inttypes.h>
#include <math.h>
#include <time.h>
#include <gmp.h>
#include <mpfr.h>

_Bool Intersect_HighPrec(mpfr_t x0,mpfr_t y0,mpfr_t z0,mpfr_t x1,mpfr_t y1,mpfr_t z1,mpfr_t x2,mpfr_t y2,mpfr_t z2,_Bool x3,_Bool y,_Bool z,mpfr_t divx,mpfr_t divy,mpfr_t divz);

_Bool Intersect_LowPrec(int prec,mpfr_t x0UP,mpfr_t x0LOW,mpfr_t y0UP,mpfr_t y0LOW,mpfr_t z0UP,mpfr_t z0LOW,mpfr_t x1LOW,mpfr_t y1LOW,mpfr_t z1LOW,mpfr_t x2UP,mpfr_t y2UP,mpfr_t z2UP,_Bool x3,_Bool y,_Bool z,mpfr_t divxUP,mpfr_t divxLOW,mpfr_t divyUP,mpfr_t divyLOW,mpfr_t divzUP,mpfr_t divzLOW);

union Data {
    double d;
    uint64_t i;
};

int main (void)
{
  mpfr_t x0,y0,z0,x0UP,x0LOW,y0UP,y0LOW,z0UP,z0LOW,x1,x1LOW,x1UP,y1,y1LOW,y1UP,z1,z1LOW,z1UP,x2,x2LOW,x2UP,y2,y2LOW,y2UP,z2,z2LOW,z2UP,xd,yd,zd,divx,divxUP,divxLOW,divy,divyUP,divyLOW,divz,divzUP,divzLOW,one,zero;
  
  double Uni_Distr[11]= {0},No_Intersection_cnt=0,Intersection_cnt=0,bit_pos[53]= {0},prec_error_cnt[53]= {0};
  _Bool res_HighPrec = 0;
  _Bool res_LowPrec = 0;
  _Bool x3=0,y=0,z=0; 
  int prec,i,Type1error=0,Type2error=0;
  uint64_t a;
  union Data x;

  srand( time(NULL) ); //provide a seed value to be able to generate different values in each execution
  int iters=0;
  
  FILE *fp1,*fpdir,*fphit_miss;
  fp1 = fopen("coordinates.txt","w+");
  fpdir = fopen ("direction.txt","w+");
  fphit_miss = fopen("HighPrecRes.txt","w+");
  
do{
//do{  
//-----------------------------------------------   
// uniform random distribution [-1,1], values saved to array Uni_Distr[]   
  mpfr_inits2 (52,x0,y0,z0,x0UP,x0LOW,y0UP,y0LOW,z0UP,z0LOW,x1,x1LOW,x1UP,y1,y1LOW,y1UP,z1,z1LOW,z1UP,x2,x2LOW,x2UP,y2,y2LOW,y2UP,z2,z2LOW,z2UP,xd,yd,zd,divx,divxUP,divxLOW,divy,divyUP,divyLOW,divz,divzUP,divzLOW,one,zero,(mpfr_ptr) 0); //initialize to double precision ("infinite" precision)
  
  for(i=0; i<6; i++){
      
        a = 0;
        a = a | rand();
        a = (a << 31) | rand();
        
        x.d = -1.0 + ((double) rand()/(RAND_MAX))*2.0;
        
        x.i = (x.i & 0xFFF0000000000000) | (a & 0xFFFFFFFFFFFFF);
        Uni_Distr[i] = x.d;
       // printf("the Uniform Distributed value: %lf\n", Uni_Distr[i]);
  }
  printf("-----------------------\n");
  for (i=6;i<12;i+=2) {
     do{ 
            a = 0;
            a = a | rand();
            a = (a << 31) | rand();
            
            x.d = -1.0 + ((double) rand()/(RAND_MAX))*2.0;
            
            x.i = (x.i & 0xFFF0000000000000) | (a & 0xFFFFFFFFFFFFF);
         //   printf("final x = %lf\n",x.d);
            Uni_Distr[i] = x.d;
         //   printf("the Uniform Distributed value for BB's min point: %lf\n", Uni_Distr[i]);
            
            a = 0;
            a = a | rand();
            a = (a << 31) | rand();
            
            x.d = ((double) rand()/(RAND_MAX));
            
            x.i = (x.i & 0xFFF0000000000000) | (a & 0xFFFFFFFFFFFFF);
         //   printf("distance to be added = %lf\n",x.d);
            Uni_Distr[i+1] = Uni_Distr[i] + x.d;
         //   printf("the Uniform Distributed value for BB's max point: %lf\n", Uni_Distr[i+1]);
            
     }while(Uni_Distr[i+1] > 1.0); 
    }
 //-----------------------------------------------------
 //assign the values
  mpfr_set_d (x0, Uni_Distr[0], MPFR_RNDU);
  mpfr_set_d (x0UP, Uni_Distr[0], MPFR_RNDU);
  mpfr_set_d (x0LOW, Uni_Distr[0], MPFR_RNDU);
  
  mpfr_set_d (y0, Uni_Distr[1], MPFR_RNDU);
  mpfr_set_d (y0UP, Uni_Distr[1], MPFR_RNDU);
  mpfr_set_d (y0LOW, Uni_Distr[1], MPFR_RNDU);

  mpfr_set_d (z0, Uni_Distr[2], MPFR_RNDU);
  mpfr_set_d (z0UP, Uni_Distr[2], MPFR_RNDU);
  mpfr_set_d (z0LOW, Uni_Distr[2], MPFR_RNDU);

  mpfr_set_d (x1, Uni_Distr[6], MPFR_RNDU);
  mpfr_set_d (x1LOW, Uni_Distr[6], MPFR_RNDU);
  mpfr_set_d (x1UP, Uni_Distr[6], MPFR_RNDU);
  
  mpfr_set_d (x2, Uni_Distr[7], MPFR_RNDU);
  mpfr_set_d (x2LOW, Uni_Distr[7], MPFR_RNDU);
  mpfr_set_d (x2UP, Uni_Distr[7], MPFR_RNDU);
  
  mpfr_set_d (y1, Uni_Distr[8], MPFR_RNDU);
  mpfr_set_d (y1LOW, Uni_Distr[8], MPFR_RNDU);
  mpfr_set_d (y1UP, Uni_Distr[8], MPFR_RNDU);
  
  mpfr_set_d (y2, Uni_Distr[9], MPFR_RNDU);
  mpfr_set_d (y2LOW, Uni_Distr[9], MPFR_RNDU);
  mpfr_set_d (y2UP, Uni_Distr[9], MPFR_RNDU);
  
  mpfr_set_d (z1, Uni_Distr[10], MPFR_RNDU);
  mpfr_set_d (z1LOW, Uni_Distr[10], MPFR_RNDU);
  mpfr_set_d (z1UP, Uni_Distr[10], MPFR_RNDU);
  
  mpfr_set_d (z2, Uni_Distr[11], MPFR_RNDU);
  mpfr_set_d (z2LOW, Uni_Distr[11], MPFR_RNDU);
  mpfr_set_d (z2UP, Uni_Distr[11], MPFR_RNDU);
 
  mpfr_set_d (xd, Uni_Distr[3], MPFR_RNDU);
  mpfr_set_d (yd, Uni_Distr[4], MPFR_RNDU);
  mpfr_set_d (zd, Uni_Distr[5], MPFR_RNDU);
  
  //------------------------------------------------------
  //generate the inverse direction vector and the boolean flag indicating if the ray is parallel to the plane
  mpfr_set_d (one, 1.0, MPFR_RNDU);
  mpfr_set_zero (zero, 1);
  
  if (mpfr_equal_p(xd,zero)) x3 = 1;
  else  {
      x3 = 0;
      mpfr_div(divx,one,xd,MPFR_RNDU);
      
      mpfr_div(divxUP,one,xd,MPFR_RNDU);
      mpfr_div(divxLOW,one,xd,MPFR_RNDU);
  }

  if (mpfr_equal_p(yd,zero)) y = 1;
  else  {
      y = 0;
      mpfr_div(divy,one,yd,MPFR_RNDU);
      
      mpfr_div(divyUP,one,yd,MPFR_RNDU);
      mpfr_div(divyLOW,one,yd,MPFR_RNDU);
  }
  
  if (mpfr_equal_p(zd,zero)) z = 1;
  else  {
      z = 0;
      mpfr_div(divz,one,zd,MPFR_RNDU);
    
      mpfr_div(divzUP,one,zd,MPFR_RNDU);
      mpfr_div(divzLOW,one,zd,MPFR_RNDU);
  }
  
//---------------------------------------------------------------------------------

      res_HighPrec = Intersect_HighPrec(x0,y0,z0,x1,y1,z1,x2,y2,z2,x3,y,z,divx,divy,divz); // high precision result
      
      mpfr_fprintf (fp1, "%RUe\n""%RUe\n""%RUe\n""%RUe\n""%RUe\n""%RUe\n""%RUe\n""%RUe\n""%RUe\n""%RUe\n""%RUe\n""%RUe\n", x0, y0, z0, x1, y1, z1, x2, y2, z2, divx, divy, divz);
      fprintf (fpdir, "%d\n""%d\n""%d\n", x3, y, z);
      fprintf (fphit_miss, "%d\n", res_HighPrec);
      
//}while(!res_HighPrec); // if somebody wants to check only for false misses uncomment the do_while_loop. 
      if (res_HighPrec) Intersection_cnt++; //amount of intersections (ray hits the AABB)
      else No_Intersection_cnt++; // amount of misses
   
    for (prec=53; prec>1; prec--) {  // downscale the precision for the mantissa
        
            res_LowPrec = Intersect_LowPrec(prec,x0UP,x0LOW,y0UP,y0LOW,z0UP,z0LOW,x1LOW,y1LOW,z1LOW,x2UP,y2UP,z2UP,x3,y,z,divxUP,divxLOW,divyUP,divyLOW,divzUP,divzLOW); //low precision result
                
                if (res_LowPrec == res_HighPrec) printf("results match,no error\n");
                else { //error checking
                    if (!res_LowPrec) {
                        if (res_HighPrec) Type1error++; //counter for false misses (always 0 since they are eliminated)
                    }
                    else {
                        if (!res_HighPrec) {
                            Type2error++; //counter for false hits
                            prec_error_cnt[prec]++;
                            bit_pos[prec] = prec_error_cnt[prec];
                        }
                    }
                }
    }
   
    iters++; //number of different input sets/tests
}while(iters<100000);
   
   fclose (fp1);
   fclose (fpdir);
   fclose (fphit_miss);
   mpfr_clears (x0,y0,z0,x0UP,x0LOW,y0UP,y0LOW,z0UP,z0LOW,x1,x1LOW,x1UP,y1,y1LOW,y1UP,z1,z1LOW,z1UP,x2,x2LOW,x2UP,y2,y2LOW,y2UP,z2,z2LOW,z2UP,xd,yd,zd,divxUP,divxLOW,divyUP,divyLOW,divzUP,divzLOW,one,zero,(mpfr_ptr) 0);
   mpfr_free_cache(); 
   printf("amount of intersections: %.0lf\n",Intersection_cnt); 
   printf("amount of no intersections: %.0lf\n",No_Intersection_cnt); 
   printf("number of Type 1 errors: %d\n",Type1error);
   printf("number of Type 2 errors: %d\n",Type2error);
   for (prec=53; prec>1; prec--) printf("Type 2 error for precision %d occurs %0.lf time(s),false hit error rate:%.9lf \n",prec,bit_pos[prec],(bit_pos[prec]/No_Intersection_cnt));
   
  return (0);
}

_Bool Intersect_HighPrec(mpfr_t x0,mpfr_t y0,mpfr_t z0,mpfr_t x1,mpfr_t y1,mpfr_t z1,mpfr_t x2,mpfr_t y2,mpfr_t z2,_Bool x3,_Bool y,_Bool z,mpfr_t divx,mpfr_t divy,mpfr_t divz) {
 
    mpfr_t tmin,tmax,tymin,tymax,tzmin,tzmax,zero,sub1,sub2;
    
    mpfr_inits2 (53,tmin,tmax,tymin,tymax,tzmin,tzmax,zero,sub1,sub2,(mpfr_ptr) 0);
    mpfr_set_zero (zero,1); 
    mpfr_set_inf (tmin,-1);
    mpfr_set_inf (tmax, 1); 
    mpfr_set_inf (tymin,-1);
    mpfr_set_inf (tymax, 1);
    mpfr_set_inf (tzmin,-1);
    mpfr_set_inf (tzmax, 1);
    if (x3) { //ray parallel to the X plane

        if (((mpfr_less_p (x0,x1)) || (mpfr_greater_p (x0,x2)))) return (0); //origin not between the slabs
        
    }
    else if (mpfr_greater_p (divx,zero)) {
         
         mpfr_sub (sub1, x1, x0, MPFR_RNDD); // sub1 = x1-x0 rounded down (used for tmin)
         mpfr_sub (sub2, x2, x0, MPFR_RNDU); // sub2 = x2-x0 rounded up (used for tmax)
         
 	 mpfr_mul (tmax, sub2, divx, MPFR_RNDU);
         
         if (mpfr_greater_p(x1,x0)) mpfr_mul (tmin, sub1, divx, MPFR_RNDD);  // x2>x1>x0
    
         else  mpfr_mul (tmin, sub1, divx, MPFR_RNDD); //  x1<=x0
    }
    else {
        
         mpfr_sub (sub2, x2, x0, MPFR_RNDU); // sub2 = x2-x0 rounded down (used for tmin)
         mpfr_sub (sub1, x1, x0, MPFR_RNDD); // sub1 = x1-x0 rounded down (used for tmax)
         
	 mpfr_mul (tmax, sub1, divx, MPFR_RNDU);
         
         if (mpfr_greater_p(x0,x2)) mpfr_mul (tmin, sub2, divx, MPFR_RNDD); //x0>x2>x1
             
         else  mpfr_mul (tmin, sub2, divx, MPFR_RNDD); //x1<=x0
    }
    
    if (y) { //ray parallel to the Y plane
        
        if (((mpfr_less_p (y0,y1)) || (mpfr_greater_p (y0,y2)))) return (0); //origin not between the slabs
        
    }
    else if (mpfr_greater_p (divy,zero)) {
        
         mpfr_sub (sub1, y1, y0, MPFR_RNDD); // sub1 = y1-y0 rounded down (used for tymin)
         mpfr_sub (sub2, y2, y0, MPFR_RNDU); // sub2 = y2-y0 rounded up (used for tymax)
         
	 mpfr_mul (tymax, sub2, divy, MPFR_RNDU);

         if (mpfr_greater_p(y1,y0))  mpfr_mul (tymin, sub1, divy, MPFR_RNDD);  // y2>y1>y0
             
         else mpfr_mul (tymin, sub1, divy, MPFR_RNDD);  //y1<=y0
    }
    else {
          
         mpfr_sub (sub2, y2, y0, MPFR_RNDU); // sub2 = y2-y0 rounded down (used for tymin)
         mpfr_sub (sub1, y1, y0, MPFR_RNDD); // sub1 = y1-y0 rounded down (used for tymax)
         
	 mpfr_mul (tymax, sub1, divy, MPFR_RNDU);
         
         if (mpfr_greater_p(y0,y2)) mpfr_mul (tymin, sub2, divy, MPFR_RNDD); //y0>y2>y1
             
         else  mpfr_mul (tymin, sub2, divy, MPFR_RNDD); //y1<=y0
    }
    
    if ((mpfr_greater_p (tmin,tymax)) || (mpfr_greater_p (tymin, tmax))) return (0); //intersection distances t do not overlap
    if (mpfr_greater_p (tymin,tmin)) mpfr_swap (tmin,tymin);
    if (mpfr_less_p (tymax,tmax)) mpfr_swap (tmax,tymax);
    
    if (z) { //ray parallel to the Z plane
        
        if (((mpfr_less_p (z0,z1)) || (mpfr_greater_p (z0,z2)))) return (0); //origin not between the slabs
        
    }
    else if (mpfr_greater_p (divz,zero)) {
        
         mpfr_sub (sub1, z1, z0, MPFR_RNDD); // sub1 = z1-z0 rounded down (used for tzmin)
         mpfr_sub (sub2, z2, z0, MPFR_RNDU); // sub2 = z2-z0 rounded up (used for tzmax)

	 mpfr_mul (tzmax, sub2, divz, MPFR_RNDU);
         
         if (mpfr_greater_p(z1,z0))  mpfr_mul (tzmin, sub1, divz, MPFR_RNDD);  // z2>z1>z0
             
         else mpfr_mul (tzmin, sub1, divz, MPFR_RNDD);  //z1<=z0
    }
    else {
        
         mpfr_sub (sub2, z2, z0, MPFR_RNDU); // sub2 = z2-z0 rounded down (used for tzmin)
         mpfr_sub (sub1, z1, z0, MPFR_RNDD); // sub1 = z1-z0 rounded down (used for tzmax)

	 mpfr_mul (tzmax, sub1, divz, MPFR_RNDU);
         
         if (mpfr_greater_p(z0,z2)) mpfr_mul (tzmin, sub2, divz, MPFR_RNDD); //z0>z2>z1
             
         else  mpfr_mul (tzmin, sub2, divz, MPFR_RNDD); //z1<=z0
    }
    
    if ((mpfr_greater_p (tmin,tzmax)) || (mpfr_greater_p (tzmin, tmax))) return (0); //intersection distances t do not overlap
    if (mpfr_greater_p (tzmin,tmin)) mpfr_swap (tmin,tzmin);
    if (mpfr_less_p (tzmax,tmax)) mpfr_swap (tmax,tzmax);
    
  /*  printf("High Precision tmin is: ");
    mpfr_out_str (stdout, 10, 0, tmin, MPFR_RNDD);
    putchar ('\n');
    printf("High Precision tmax is: ");
    mpfr_out_str (stdout, 10, 0, tmax, MPFR_RNDU);
    putchar ('\n');
  */    
    if ((mpfr_greaterequal_p (tmax,tmin)) && (mpfr_greater_p(tmax,zero))) return (1); //ray hits the AABB
}


_Bool Intersect_LowPrec(int prec,mpfr_t x0UP,mpfr_t x0LOW,mpfr_t y0UP,mpfr_t y0LOW,mpfr_t z0UP,mpfr_t z0LOW,mpfr_t x1LOW,mpfr_t y1LOW,mpfr_t z1LOW,mpfr_t x2UP,mpfr_t y2UP,mpfr_t z2UP,_Bool x3,_Bool y,_Bool z,mpfr_t divxUP,mpfr_t divxLOW,mpfr_t divyUP,mpfr_t divyLOW,mpfr_t divzUP,mpfr_t divzLOW) {
    
    mpfr_t tmin,tmax,tymin,tymax,tzmin,tzmax,zero,sub1,sub2;
    
    mpfr_inits2 (prec,tmin,tmax,tymin,tymax,tzmin,tzmax,zero,sub1,sub2,(mpfr_ptr) 0);
    
    mpfr_set_zero (zero, 1); //initialize zero=0
    mpfr_set_inf (tmin, -1); //tmin = -INFINITY
    mpfr_set_inf (tmax, 1);  //tmax = +INFINITY
    mpfr_set_inf (tymin,-1); //tymin = -INFINITY
    mpfr_set_inf (tymax, 1); //tymax = +INFINITY
    mpfr_set_inf (tzmin,-1); //tzmin = -INFINITY
    mpfr_set_inf (tzmax, 1); //tzmax = +INFINITY
//-------------------------------------------------------------
// generate the lower and upper values    
    mpfr_prec_round(x0LOW,prec,MPFR_RNDD);
    mpfr_prec_round(y0LOW,prec,MPFR_RNDD);
    mpfr_prec_round(z0LOW,prec,MPFR_RNDD);
    mpfr_prec_round(x0UP,prec,MPFR_RNDU);
    mpfr_prec_round(y0UP,prec,MPFR_RNDU);
    mpfr_prec_round(z0UP,prec,MPFR_RNDU);
    
    mpfr_prec_round(x1LOW,prec,MPFR_RNDD);
    mpfr_prec_round(y1LOW,prec,MPFR_RNDD);
    mpfr_prec_round(z1LOW,prec,MPFR_RNDD);
    
    mpfr_prec_round(x2UP,prec,MPFR_RNDU);
    mpfr_prec_round(y2UP,prec,MPFR_RNDU);
    mpfr_prec_round(z2UP,prec,MPFR_RNDU);
    
    
    mpfr_prec_round(divxLOW,prec,MPFR_RNDD);
    mpfr_prec_round(divyLOW,prec,MPFR_RNDD);
    mpfr_prec_round(divzLOW,prec,MPFR_RNDD);
    mpfr_prec_round(divzUP,prec,MPFR_RNDU);
    mpfr_prec_round(divyUP,prec,MPFR_RNDU);
    mpfr_prec_round(divzUP,prec,MPFR_RNDU);
    
    if (x3) { //ray parallel to the X plane
        
        if (((mpfr_less_p (x0UP,x1LOW)) || (mpfr_greater_p (x0LOW,x2UP)))) return (0); //origin not between the slabs
        
    }
    else if (mpfr_greater_p (divxUP,zero)) {
    
         mpfr_sub (sub1, x1LOW, x0UP, MPFR_RNDD); //sub1 = x1LOW-x0UP , the minimum value could be reached for sub1
         mpfr_sub (sub2, x2UP, x0LOW, MPFR_RNDU); //sub2 = x2UP-x0LOW , the maximum value could be reached for sub2
         
         mpfr_mul (tmax, sub2, divxUP, MPFR_RNDU);
         
         if (mpfr_greater_p(x1LOW,x0UP)) mpfr_mul (tmin, sub1, divxLOW, MPFR_RNDD);  // x2>x1>x0
    
         else  mpfr_mul (tmin, sub1, divxUP, MPFR_RNDD); //  x1<=x0<=x2
    }
    else {
        
         mpfr_sub (sub2, x2UP, x0LOW, MPFR_RNDU);
         mpfr_sub (sub1, x1LOW, x0UP, MPFR_RNDD);
         
         mpfr_mul (tmax, sub1, divxLOW, MPFR_RNDU);
         
         if (mpfr_greater_p(x0LOW,x2UP)) mpfr_mul (tmin, sub2, divxUP, MPFR_RNDD); //x0>x2>x1
             
         else  mpfr_mul (tmin, sub2, divxLOW, MPFR_RNDD); //x1<=x0<=x2
    }
    
    
    if (y) { //ray parallel to the Y plane
        
        if (((mpfr_less_p (y0UP,y1LOW)) || (mpfr_greater_p (y0LOW,y2UP)))) return (0); //origin not between the slabs
        
    }
    else if (mpfr_greater_p (divyUP,zero)) {
    
         mpfr_sub (sub1, y1LOW, y0UP, MPFR_RNDD); 
         mpfr_sub (sub2, y2UP, y0LOW, MPFR_RNDU);
        
         mpfr_mul (tymax, sub2, divyUP, MPFR_RNDU);

         if (mpfr_greater_p(y1LOW,y0UP))  mpfr_mul (tymin, sub1, divyLOW, MPFR_RNDD);  // y2>y1>y0
          
         else mpfr_mul (tymin, sub1, divyUP, MPFR_RNDD);  //y1<=y0
    }
    else {
        
         mpfr_sub (sub2, y2UP, y0LOW, MPFR_RNDU);
         mpfr_sub (sub1, y1LOW, y0UP, MPFR_RNDD);
         
         mpfr_mul (tymax, sub1, divyLOW, MPFR_RNDU);
         
         if (mpfr_greater_p(y0LOW,y2UP)) mpfr_mul (tymin, sub2, divyUP, MPFR_RNDD); //y0>y2>y1
             
         else  mpfr_mul (tymin, sub2, divyLOW, MPFR_RNDD); //y0<=y1<y2
    }
    
    if ((mpfr_greater_p (tmin,tymax)) || (mpfr_greater_p (tymin, tmax))) return (0);
    if (mpfr_greater_p (tymin,tmin)) mpfr_swap (tmin,tymin);
    if (mpfr_less_p (tymax,tmax)) mpfr_swap (tmax,tymax);
    
    if (z) { //ray parallel to the Z plane
        
        if (((mpfr_less_p (z0UP,z1LOW)) || (mpfr_greater_p (z0LOW,z2UP)))) return (0); //origin not between the slabs
        
    }
    else if (mpfr_greater_p (divzUP,zero)) {
    
         mpfr_sub (sub1, z1LOW, z0UP, MPFR_RNDD);
         mpfr_sub (sub2, z2UP, z0LOW, MPFR_RNDU);
         
         mpfr_mul (tzmax, sub2, divzUP, MPFR_RNDU);
         
         if (mpfr_greater_p(z1LOW,z0UP))  mpfr_mul (tzmin, sub1, divzLOW, MPFR_RNDD);  // z2>z1>z0
             
         else mpfr_mul (tzmin, sub1, divzUP, MPFR_RNDD);  //z1<=z0
    }
    else {
        
         mpfr_sub (sub2, z2UP, z0LOW, MPFR_RNDU);
         mpfr_sub (sub1, z1LOW, z0UP, MPFR_RNDD);
         
         mpfr_mul (tzmax, sub1, divzLOW, MPFR_RNDU);
         
         if (mpfr_greater_p(z0LOW,z2UP)) mpfr_mul (tzmin, sub2, divzUP, MPFR_RNDD); //z0>z2>z1
             
         else  mpfr_mul (tzmin, sub2, divzLOW, MPFR_RNDD); //z1<=z0<z2
    }
    
    if ((mpfr_greater_p (tmin,tzmax)) || (mpfr_greater_p (tzmin, tmax))) return (0);
    if (mpfr_greater_p (tzmin,tmin)) mpfr_swap (tmin,tzmin);
    if (mpfr_less_p (tzmax,tmax)) mpfr_swap (tmax,tzmax);
    
 /*   printf("Low Precision tmin is: ");
    mpfr_out_str (stdout, 10, 0, tmin, MPFR_RNDD);
    putchar ('\n');
    printf("Low Precision tmax is: ");
    mpfr_out_str (stdout, 10, 0, tmax, MPFR_RNDU);
    putchar ('\n');
 */      
    if ((mpfr_greaterequal_p (tmax,tmin)) && (mpfr_greater_p(tmax,zero))) return (1);
}  
