#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <inttypes.h>
#include <math.h>
#include <time.h>
#include <gmp.h>
#include <mpfr.h>

#define RIGHT  0
#define LEFT   1
#define MIDDLE 2

_Bool Intersect_HighPrec (mpfr_t x0,mpfr_t y0,mpfr_t z0,mpfr_t x1,mpfr_t y1,mpfr_t z1,mpfr_t x2,mpfr_t z2,mpfr_t y2,mpfr_t xd,mpfr_t yd,mpfr_t zd,mpfr_t divx,mpfr_t divy,mpfr_t divz);

_Bool Intersect_LowPrec(int prec,mpfr_t x0UP,mpfr_t x0LOW,mpfr_t y0UP,mpfr_t y0LOW,mpfr_t z0UP,mpfr_t z0LOW,mpfr_t x1LOW,mpfr_t x1UP,mpfr_t y1LOW,mpfr_t y1UP,mpfr_t z1LOW,mpfr_t z1UP,mpfr_t x2UP,mpfr_t x2LOW,mpfr_t y2UP,mpfr_t y2LOW,mpfr_t z2UP,mpfr_t z2LOW,mpfr_t xdLOW,mpfr_t ydLOW,mpfr_t zdLOW,mpfr_t xdUP,mpfr_t ydUP,mpfr_t zdUP,mpfr_t divxUP,mpfr_t divxLOW,mpfr_t divyUP,mpfr_t divyLOW,mpfr_t divzUP,mpfr_t divzLOW);

union Data {
    double d;
    uint64_t i;
};

int main (void)
{
  mpfr_t x0,y0,z0,x0UP,x0LOW,y0UP,y0LOW,z0UP,z0LOW,x1,x1LOW,x1UP,y1,y1LOW,y1UP,z1,z1LOW,z1UP,x2,x2LOW,x2UP,y2,y2LOW,y2UP,z2,z2LOW,z2UP,xd,yd,zd,xdLOW,ydLOW,zdLOW,xdUP,ydUP,zdUP,divx,divxUP,divxLOW,divy,divyUP,divyLOW,divz,divzUP,divzLOW,one,zero;
  
  double Uni_Distr[11]= {0},No_Intersection_cnt=0,Intersection_cnt=0,bit_pos[53]= {0},prec_error_cnt[53]= {0};
  _Bool res_HighPrec = 0;
  _Bool res_LowPrec = 0;
  int prec,i,Type1error=0,Type2error=0;
  uint64_t a;
  union Data x;

  srand( time(NULL) ); //provide a seed value to be able to generate different values in each execution
  int iters=0;
do{
//do{  
    
  mpfr_inits2 (53,x0,y0,z0,x0UP,x0LOW,y0UP,y0LOW,z0UP,z0LOW,x1,x1LOW,x1UP,y1,y1LOW,y1UP,z1,z1LOW,z1UP,x2,x2LOW,x2UP,y2,y2LOW,y2UP,z2,z2LOW,z2UP,xd,yd,zd,xdLOW,ydLOW,zdLOW,xdUP,ydUP,zdUP,divx,divxUP,divxLOW,divy,divyUP,divyLOW,divz,divzUP,divzLOW,one,zero,(mpfr_ptr) 0);
  
  for(i=0; i<3; i++){
      
        a = 0;
        a = a | rand();
        a = (a << 31) | rand();
        
        x.d = -1.0 + ((double) rand()/(RAND_MAX))*2.0;
        
        x.i = (x.i & 0xFFF0000000000000) | (a & 0xFFFFFFFFFFFFF);
        Uni_Distr[i] = x.d;
     //   printf("the Uniform Distributed value: %lf\n", Uni_Distr[i]);
  }
    for(i=3; i<6; i++){
       do {
            a = 0;
            a = a | rand();
            a = (a << 31) | rand();
            
            x.d = -1.0 + ((double) rand()/(RAND_MAX))*2.0;
            
            x.i = (x.i & 0xFFF0000000000000) | (a & 0xFFFFFFFFFFFFF);
            Uni_Distr[i] = x.d;
      //      printf("the Uniform Distributed value: %lf\n", Uni_Distr[i]);
        }while(Uni_Distr[i] == 0);
    }
  printf("-----------------------\n");
  for (i=6;i<12;i+=2) {
     do{ 
            a = 0;
            a = a | rand();
            a = (a << 31) | rand();
            
            x.d = -1.0 + ((double) rand()/(RAND_MAX))*2.0;
            
            x.i = (x.i & 0xFFF0000000000000) | (a & 0xFFFFFFFFFFFFF);
    //        printf("final x = %lf\n",x.d);
            Uni_Distr[i] = x.d;
    //        printf("the Uniform Distributed value for BB's min point: %lf\n", Uni_Distr[i]);
            
            a = 0;
            a = a | rand();
            a = (a << 31) | rand();
            
            x.d = ((double) rand()/(RAND_MAX));
            
            x.i = (x.i & 0xFFF0000000000000) | (a & 0xFFFFFFFFFFFFF);
      //      printf("distance to be added = %lf\n",x.d);
            Uni_Distr[i+1] = Uni_Distr[i] + x.d;
      //      printf("the Uniform Distributed value for BB's max point: %lf\n", Uni_Distr[i+1]);
            
     }while(Uni_Distr[i+1] > 1.0); 
    }
  printf("-----------------------\n");
 
  mpfr_set_d (x0, Uni_Distr[0], MPFR_RNDU);
  mpfr_set_d (x0UP, Uni_Distr[0], MPFR_RNDU);
  mpfr_set_d (x0LOW, Uni_Distr[0], MPFR_RNDD);
  
  mpfr_set_d (y0, Uni_Distr[1], MPFR_RNDU);
  mpfr_set_d (y0UP, Uni_Distr[1], MPFR_RNDU);
  mpfr_set_d (y0LOW, Uni_Distr[1], MPFR_RNDD);
  
  mpfr_set_d (z0, Uni_Distr[2], MPFR_RNDU);
  mpfr_set_d (z0UP, Uni_Distr[2], MPFR_RNDU);
  mpfr_set_d (z0LOW, Uni_Distr[2], MPFR_RNDD);
 
  mpfr_set_d (xd, Uni_Distr[3], MPFR_RNDU);
  mpfr_set_d (xdLOW, Uni_Distr[3], MPFR_RNDD);
  mpfr_set_d (xdUP, Uni_Distr[3], MPFR_RNDU);
  
  mpfr_set_d (yd, Uni_Distr[4], MPFR_RNDU);
  mpfr_set_d (ydLOW, Uni_Distr[4], MPFR_RNDD);
  mpfr_set_d (ydUP, Uni_Distr[4], MPFR_RNDU);
 
  mpfr_set_d (zd, Uni_Distr[5], MPFR_RNDU);
  mpfr_set_d (zdLOW, Uni_Distr[5], MPFR_RNDD);
  mpfr_set_d (zdUP, Uni_Distr[5], MPFR_RNDU);
  
  mpfr_set_d (x1, Uni_Distr[6], MPFR_RNDU);
  mpfr_set_d (x1LOW, Uni_Distr[6], MPFR_RNDD);
  mpfr_set_d (x1UP, Uni_Distr[6], MPFR_RNDU);
 
  mpfr_set_d (x2, Uni_Distr[7], MPFR_RNDU);
  mpfr_set_d (x2LOW, Uni_Distr[7], MPFR_RNDD);
  mpfr_set_d (x2UP, Uni_Distr[7], MPFR_RNDU);
 
  mpfr_set_d (y1, Uni_Distr[8], MPFR_RNDU);
  mpfr_set_d (y1LOW, Uni_Distr[8], MPFR_RNDD);
  mpfr_set_d (y1UP, Uni_Distr[8], MPFR_RNDU);
 
  mpfr_set_d (y2, Uni_Distr[9], MPFR_RNDU);
  mpfr_set_d (y2LOW, Uni_Distr[9], MPFR_RNDD);
  mpfr_set_d (y2UP, Uni_Distr[9], MPFR_RNDU);
 
  mpfr_set_d (z1, Uni_Distr[10], MPFR_RNDU);
  mpfr_set_d (z1LOW, Uni_Distr[10], MPFR_RNDD);
  mpfr_set_d (z1UP, Uni_Distr[10], MPFR_RNDU);
 
  mpfr_set_d (z2, Uni_Distr[11], MPFR_RNDU);
  mpfr_set_d (z2LOW, Uni_Distr[11], MPFR_RNDD);
  mpfr_set_d (z2UP, Uni_Distr[11], MPFR_RNDU);
  
  mpfr_set_d (one, 1.0, MPFR_RNDU);
  mpfr_set_zero (zero, 1);
  
      mpfr_div(divx,one,xd,MPFR_RNDU);
      mpfr_div(divxUP,one,xd,MPFR_RNDU);
      mpfr_div(divxLOW,one,xd,MPFR_RNDD);

      mpfr_div(divy,one,yd,MPFR_RNDU);
      mpfr_div(divyUP,one,yd,MPFR_RNDU);
      mpfr_div(divyLOW,one,yd,MPFR_RNDD);
  
      mpfr_div(divz,one,zd,MPFR_RNDU);
      mpfr_div(divzUP,one,zd,MPFR_RNDU);
      mpfr_div(divzLOW,one,zd,MPFR_RNDD);
     
      res_HighPrec = Intersect_HighPrec(x0,y0,z0,x1,y1,z1,x2,y2,z2,xd,yd,zd,divx,divy,divz);
//}while(!res_HighPrec);
      if (res_HighPrec) Intersection_cnt++;
      else No_Intersection_cnt++;
   
    for (prec=53; prec>1; prec--) {  
        
            res_LowPrec = Intersect_LowPrec(prec,x0UP,x0LOW,y0UP,y0LOW,z0UP,z0LOW,x1LOW,x1UP,y1LOW,y1UP,z1LOW,z1UP,x2UP,x2LOW,y2UP,y2LOW,z2UP,z2LOW,xdLOW,ydLOW,zdLOW,xdUP,ydUP,zdUP,divxUP,divxLOW,divyUP,divyLOW,divzUP,divzLOW);
                
                if (res_LowPrec == res_HighPrec) printf("results match,no error\n");
                else { //error checking
                    if (!res_LowPrec) {
                        if (res_HighPrec) Type1error++;
                    }
                    else {
                        if (!res_HighPrec) {
                            Type2error++;
                            prec_error_cnt[prec]++;
                            bit_pos[prec] = prec_error_cnt[prec];
                        }
                    }
                }
    }
   
    iters++; //number of different input sets/tests
    
}while(iters < 50000);
   
   mpfr_clears (x0,y0,z0,x0UP,x0LOW,y0UP,y0LOW,z0UP,z0LOW,x1,x1LOW,x1UP,y1,y1LOW,y1UP,z1,z1LOW,z1UP,x2,x2LOW,x2UP,y2,y2LOW,y2UP,z2,z2LOW,z2UP,xd,yd,zd,xdLOW,ydLOW,zdLOW,xdUP,ydUP,zdUP,divxUP,divxLOW,divyUP,divyLOW,divzUP,divzLOW,one,zero,(mpfr_ptr) 0);
   mpfr_free_cache(); 
   printf("amount of intersections: %.0lf\n",Intersection_cnt); 
   printf("amount of no intersections: %.0lf\n",No_Intersection_cnt); 
   printf("number of Type 1 errors: %d\n",Type1error);
   printf("number of Type 2 errors: %d\n",Type2error);
   for (prec=53; prec>1; prec--) printf("Type 2 error for precision %d occurs %0.lf time(s),percentage:%.9lf \n",prec,bit_pos[prec],bit_pos[prec]/No_Intersection_cnt);
   
   return (0);
}

_Bool Intersect_HighPrec (mpfr_t x0,mpfr_t y0,mpfr_t z0,mpfr_t x1,mpfr_t y1,mpfr_t z1,mpfr_t x2,mpfr_t y2,mpfr_t z2,mpfr_t xd,mpfr_t yd,mpfr_t zd,mpfr_t divx,mpfr_t divy,mpfr_t divz) {

    _Bool inside = 1;
    _Bool x=0,y=0,z=0; //signify in which plane the maximum intersection distance occurs
    int quadrantX,quadrantY,quadrantZ;
    static const char thousand[]= "-1000"; // when quadrant is MIDDLE or direction is 0, to assign negative value to maxT

    mpfr_t subX,subY,subZ,finalmaxT,maxTX,maxTY,maxTZ,maxT_xd,maxT_yd,maxT_zd,candidatePlaneX,candidatePlaneY,candidatePlaneZ,coordX,coordY,coordZ,zero;
    
    mpfr_inits2 (53,finalmaxT,maxTX,maxTY,maxTZ,maxT_xd,maxT_yd,maxT_zd,candidatePlaneX,candidatePlaneY,candidatePlaneZ,coordX,coordY,coordZ,zero,subX,subY,subZ,(mpfr_ptr) 0);
    mpfr_set_zero (zero,1);
  
    
    // find candidate planes
    if (mpfr_less_p (x0,x1)) {
        quadrantX = LEFT;    
        mpfr_set (candidatePlaneX,x1,MPFR_RNDN);
        inside = 0;
    }
    else if (mpfr_greater_p (x0,x2)) {
        quadrantX = RIGHT;
        mpfr_set (candidatePlaneX,x2,MPFR_RNDN);
        inside = 0;
    }
    else quadrantX = MIDDLE;
    
    if (mpfr_less_p (y0,y1)) {
        quadrantY = LEFT;    
        mpfr_set (candidatePlaneY,y1,MPFR_RNDN);
        inside = 0;
    }
    else if (mpfr_greater_p (y0,y2)) {
        quadrantY = RIGHT;
        mpfr_set (candidatePlaneY,y2,MPFR_RNDN);
        inside = 0;
    }
    else quadrantY = MIDDLE;
    
    if (mpfr_less_p (z0,z1)) {
        quadrantZ = LEFT;    
        mpfr_set (candidatePlaneZ,z1,MPFR_RNDN);
        inside = 0;
    }
    else if (mpfr_greater_p (z0,z2)) {
        quadrantZ = RIGHT;
        mpfr_set (candidatePlaneZ,z2,MPFR_RNDN);
        inside = 0;
    }
    else quadrantZ = MIDDLE;
 
    //if Ray's origin inside bounding box, hit
    if (inside) return (1);
    
    //calculate T distances to candidate planes
    if (mpfr_lessgreater_p(xd,zero) && (quadrantX != MIDDLE)) {  //find maxTX
        
           if (quadrantX == LEFT) {
               
                mpfr_sub (subX, candidatePlaneX, x0, MPFR_RNDN);
                mpfr_mul (maxTX, subX, divx, MPFR_RNDN);
               
           }
           else { // i.e quadrantX == RIGHT
                    
                mpfr_sub (subX, candidatePlaneX, x0, MPFR_RNDN);
                mpfr_mul (maxTX, subX, divx, MPFR_RNDN);
                
            } 
    }
    else mpfr_set_str (maxTX,thousand,10,MPFR_RNDN);
    
    
    if (mpfr_lessgreater_p(yd,zero) && (quadrantY != MIDDLE)) {  //find maxTY
        
           if (quadrantY == LEFT) {
 
                mpfr_sub (subY, candidatePlaneY, y0, MPFR_RNDN);
                mpfr_mul (maxTY, subY, divy, MPFR_RNDN);
                
           }
           else { // i.e quadrantX == RIGHT
                    
                mpfr_sub (subY, candidatePlaneY, y0, MPFR_RNDN);
                mpfr_mul (maxTY, subY, divy, MPFR_RNDN);
                
            } 
    }
    else mpfr_set_str (maxTY,thousand,10,MPFR_RNDN);
    

   if (mpfr_lessgreater_p(zd,zero) && (quadrantZ != MIDDLE)) {  //find maxTZ
        
           if (quadrantZ == LEFT) {
               
                mpfr_sub (subZ, candidatePlaneZ, z0, MPFR_RNDN);
                mpfr_mul (maxTZ, subZ, divz, MPFR_RNDN);

           }
           else { // i.e quadrantX == RIGHT
    
                mpfr_sub (subZ, candidatePlaneZ, z0, MPFR_RNDN);
                mpfr_mul (maxTZ, subZ, divz, MPFR_RNDN);
                
            } 
    }
    else mpfr_set_str (maxTZ,thousand,10,MPFR_RNDN);  
    
    //get largest of maxT's for final choice of intersection
    
    if (mpfr_greaterequal_p (maxTX,maxTY)) { // maxTX>maxTY
       
        if (mpfr_greaterequal_p (maxTX,maxTZ)) {
            mpfr_set (finalmaxT,maxTX,MPFR_RNDN); //maxTX>maxTZ-->finalmaxT=maxTX
            x = 1; //whichplane
        }
        else {
            mpfr_set (finalmaxT,maxTZ,MPFR_RNDN); //maxTX<=maxTZ --> finalmaxT=maxTZ
            z = 1; //whichplane
        }
    }
    else { //maxTY>=maxTX
        
        if (mpfr_greaterequal_p (maxTY,maxTZ)) {
            mpfr_set (finalmaxT,maxTY,MPFR_RNDN); //maxTY>maxTZ-->finalmaxT=maxTY
            y = 1; //whichplane  
        }
        else {
            mpfr_set (finalmaxT,maxTZ,MPFR_RNDN); //maxTY<=maxTZ --> finalmaxT=maxTZ
            z = 1; //whichplane
        }
    }

    //check final candidate if acutally hits the box
    if (mpfr_less_p(finalmaxT,zero)) return (0); // if finalmaxT<0 
        
    if (x) {

        mpfr_mul (maxT_yd,yd,finalmaxT,MPFR_RNDN);
        mpfr_add (coordY,y0,maxT_yd,MPFR_RNDN); //coordY = y0 + finalmaxT*yd;
        
        if (mpfr_less_p (coordY,y1) || mpfr_greater_p (coordY,y2)) return (0);
        
        mpfr_mul (maxT_zd,zd,finalmaxT,MPFR_RNDN);
        mpfr_add (coordZ,z0,maxT_zd,MPFR_RNDN); //coordZ = z0 + finalmaxT*zd;

        if (mpfr_less_p (coordZ,z1) || mpfr_greater_p (coordZ,z2)) return (0);
        
        return (1); //ray hits the box if survived all checks
    }  
    else if (y) {
  
        mpfr_mul (maxT_xd,xd,finalmaxT,MPFR_RNDN);
        mpfr_add (coordX,x0,maxT_xd,MPFR_RNDN); //coordX = x0 + finalmaxT*xd;
        
        if (mpfr_less_p (coordX,x1) || mpfr_greater_p (coordX,x2)) return (0);
        
        mpfr_mul (maxT_zd,zd,finalmaxT,MPFR_RNDN);
        mpfr_add (coordZ,z0,maxT_zd,MPFR_RNDN); //coordZ = z0 + finalmaxT*zd;
  
        if (mpfr_less_p (coordZ,z1) || mpfr_greater_p (coordZ,z2)) return (0);
        
        return (1); //ray hits the box if survived all checks
    }
    else if (z) { 
        
        mpfr_mul (maxT_xd,xd,finalmaxT,MPFR_RNDN);
        mpfr_add (coordX,x0,maxT_xd,MPFR_RNDN); //coordX = x0 + finalmaxT*xd;
        
        if (mpfr_less_p (coordX,x1) || mpfr_greater_p (coordX,x2)) return (0);
        
        mpfr_mul (maxT_yd,yd,finalmaxT,MPFR_RNDN);
        mpfr_add (coordY,y0,maxT_yd,MPFR_RNDN); //coordY = y0 + finalmaxT*yd;
        
        if (mpfr_less_p (coordY,y1) || mpfr_greater_p (coordY,y2)) return (0);
        
        return (1); //ray hits the box if survived all checks
    }
}

_Bool Intersect_LowPrec(int prec,mpfr_t x0UP,mpfr_t x0LOW,mpfr_t y0UP,mpfr_t y0LOW,mpfr_t z0UP,mpfr_t z0LOW,mpfr_t x1LOW,mpfr_t x1UP,mpfr_t y1LOW,mpfr_t y1UP,mpfr_t z1LOW,mpfr_t z1UP,mpfr_t x2UP,mpfr_t x2LOW,mpfr_t y2UP,mpfr_t y2LOW,mpfr_t z2UP,mpfr_t z2LOW,mpfr_t xdLOW,mpfr_t ydLOW,mpfr_t zdLOW,mpfr_t xdUP,mpfr_t ydUP,mpfr_t zdUP,mpfr_t divxUP,mpfr_t divxLOW,mpfr_t divyUP,mpfr_t divyLOW,mpfr_t divzUP,mpfr_t divzLOW) {
    
    _Bool inside = 1;
    _Bool x=0,y=0,z=0; //signify in which plane the maximum intersection distance occurs
    int quadrantX,quadrantY,quadrantZ;
    static const char thousand[]= "-100000"; // when quadrant is MIDDLE or direction is 0, to assign negative value to maxT

    mpfr_t subXUP,subXLOW,subYUP,subYLOW,subZUP,subZLOW,finalmaxTUP,finalmaxTLOW,maxTXUP,maxTXLOW,maxTYUP,maxTYLOW,maxTZUP,maxTZLOW,maxT_xdUP,maxT_xdLOW,maxT_ydUP,maxT_ydLOW,maxT_zdUP,maxT_zdLOW,candidatePlaneXLOW,candidatePlaneXUP,candidatePlaneYLOW,candidatePlaneYUP,candidatePlaneZLOW,candidatePlaneZUP,coordXUP,coordXLOW,coordYUP,coordYLOW,coordZUP,coordZLOW,zero;
    
    mpfr_inits2 (prec,subXUP,subXLOW,subYUP,subYLOW,subZUP,subZLOW,finalmaxTUP,finalmaxTLOW,maxTXUP,maxTXLOW,maxTYUP,maxTYLOW,maxTZUP,maxTZLOW,maxT_xdUP,maxT_xdLOW,maxT_ydUP,maxT_ydLOW,maxT_zdUP,maxT_zdLOW,candidatePlaneXLOW,candidatePlaneXUP,candidatePlaneYLOW,candidatePlaneYUP,candidatePlaneZLOW,candidatePlaneZUP,coordXUP,coordXLOW,coordYUP,coordYLOW,coordZUP,coordZLOW,zero,(mpfr_ptr) 0);
    mpfr_set_zero (zero,1);
    
    mpfr_prec_round(x0LOW,prec,MPFR_RNDD);
    mpfr_prec_round(y0LOW,prec,MPFR_RNDD);
    mpfr_prec_round(z0LOW,prec,MPFR_RNDD);
    mpfr_prec_round(x0UP,prec,MPFR_RNDU);
    mpfr_prec_round(y0UP,prec,MPFR_RNDU);
    mpfr_prec_round(z0UP,prec,MPFR_RNDU);
    
    mpfr_prec_round(x1LOW,prec,MPFR_RNDD);
    mpfr_prec_round(y1LOW,prec,MPFR_RNDD);
    mpfr_prec_round(z1LOW,prec,MPFR_RNDD);
    mpfr_prec_round(x2LOW,prec,MPFR_RNDD);
    mpfr_prec_round(y2LOW,prec,MPFR_RNDD);
    mpfr_prec_round(z2LOW,prec,MPFR_RNDD);
    
    mpfr_prec_round(x1UP,prec,MPFR_RNDU);
    mpfr_prec_round(y1UP,prec,MPFR_RNDU);
    mpfr_prec_round(z1UP,prec,MPFR_RNDU);
    mpfr_prec_round(x2UP,prec,MPFR_RNDU);
    mpfr_prec_round(y2UP,prec,MPFR_RNDU);
    mpfr_prec_round(z2UP,prec,MPFR_RNDU);
    
    mpfr_prec_round(divxLOW,prec,MPFR_RNDD);
    mpfr_prec_round(divyLOW,prec,MPFR_RNDD);
    mpfr_prec_round(divzLOW,prec,MPFR_RNDD);
    mpfr_prec_round(divzUP,prec,MPFR_RNDU);
    mpfr_prec_round(divyUP,prec,MPFR_RNDU);
    mpfr_prec_round(divzUP,prec,MPFR_RNDU);
    
    mpfr_prec_round(xdLOW,prec,MPFR_RNDD);
    mpfr_prec_round(ydLOW,prec,MPFR_RNDD);
    mpfr_prec_round(zdLOW,prec,MPFR_RNDD);
    mpfr_prec_round(xdUP,prec,MPFR_RNDU);
    mpfr_prec_round(ydUP,prec,MPFR_RNDU);
    mpfr_prec_round(zdUP,prec,MPFR_RNDU);
    
      // find candidate planes
    if (mpfr_less_p (x0UP,x1LOW)) {
        quadrantX = LEFT;    
        mpfr_set (candidatePlaneXLOW,x1LOW,MPFR_RNDD);
        inside = 0;
    }
    else if (mpfr_greater_p (x0LOW,x2UP)) {
        quadrantX = RIGHT;
        mpfr_set (candidatePlaneXUP,x2UP,MPFR_RNDU);
        inside = 0;
    }
    else quadrantX = MIDDLE;

    if (mpfr_less_p (y0UP,y1LOW)) {
        quadrantY = LEFT;    
        mpfr_set (candidatePlaneYLOW,y1LOW,MPFR_RNDD);
        inside = 0;
    }
    else if (mpfr_greater_p (y0LOW,y2UP)) {
        quadrantY = RIGHT;
        mpfr_set (candidatePlaneYUP,y2UP,MPFR_RNDU);
        inside = 0;
    }
    else quadrantY = MIDDLE;

    if (mpfr_less_p (z0UP,z1LOW)) {
        quadrantZ = LEFT;    
        mpfr_set (candidatePlaneZLOW,z1LOW,MPFR_RNDD);
        inside = 0;
    }
    else if (mpfr_greater_p (z0LOW,z2UP)) {
        quadrantZ = RIGHT;
        mpfr_set (candidatePlaneZUP,z2UP,MPFR_RNDU);
        inside = 0;
    }
    else quadrantZ = MIDDLE;
 
    //if Ray's origin inside bounding box, hit
    if (inside) return (1);
    
    //calculate T distances to candidate planes
    if (mpfr_lessgreater_p(xdUP,zero) && (quadrantX != MIDDLE)) {  //find maxTX
           
           if (quadrantX == LEFT) {
                
                mpfr_sub (subXLOW,candidatePlaneXLOW,x0UP,MPFR_RNDD);
                mpfr_sub (subXUP,candidatePlaneXLOW,x0LOW,MPFR_RNDU);
                mpfr_mul (maxTXUP,subXUP,divxUP,MPFR_RNDU);
                mpfr_mul (maxTXLOW, subXLOW, divxLOW, MPFR_RNDD);
                
           }
           else { // i.e quadrantX == RIGHT
                  
                mpfr_sub (subXLOW,candidatePlaneXUP,x0UP,MPFR_RNDD);
                mpfr_sub (subXUP,candidatePlaneXUP,x0LOW,MPFR_RNDU);
                mpfr_mul (maxTXUP,subXLOW,divxLOW,MPFR_RNDU);
                mpfr_mul (maxTXLOW, subXUP, divxUP, MPFR_RNDD);
                
            } 
    }
    else { 
            mpfr_set_str (maxTXUP,thousand,10,MPFR_RNDN);
            mpfr_set_str (maxTXLOW,thousand,10,MPFR_RNDN);
    }
    
    if (mpfr_lessgreater_p(ydUP,zero) && (quadrantY != MIDDLE)) {  //find maxTY
           
           if (quadrantY == LEFT) {
            
                mpfr_sub (subYLOW,candidatePlaneYLOW,y0UP,MPFR_RNDD);
                mpfr_sub (subYUP,candidatePlaneYLOW,y0LOW,MPFR_RNDU);
                mpfr_mul (maxTYUP,subYUP,divyUP,MPFR_RNDU);
                mpfr_mul (maxTYLOW, subYLOW, divyLOW, MPFR_RNDD);
                
           }
           else { // i.e quadrantX == RIGHT
                    
                mpfr_sub (subYLOW,candidatePlaneYUP,y0UP,MPFR_RNDD);
                mpfr_sub (subYUP,candidatePlaneYUP,y0LOW,MPFR_RNDU);
                mpfr_mul (maxTYUP,subYLOW,divyLOW,MPFR_RNDU);
                mpfr_mul (maxTYLOW, subYUP, divyUP, MPFR_RNDD);
                
            } 
    }
    else { 
            mpfr_set_str (maxTYUP,thousand,10,MPFR_RNDN);
            mpfr_set_str (maxTYLOW,thousand,10,MPFR_RNDN);
    }
    

   if (mpfr_lessgreater_p(zdUP,zero) && (quadrantZ != MIDDLE)) {  //find maxTZ
           
           if (quadrantZ == LEFT) {
            
                mpfr_sub (subZLOW,candidatePlaneZLOW,z0UP,MPFR_RNDD);
                mpfr_sub (subZUP,candidatePlaneZLOW,z0LOW,MPFR_RNDU);
                mpfr_mul (maxTZUP,subZUP,divzUP,MPFR_RNDU);
                mpfr_mul (maxTZLOW, subZLOW, divzLOW, MPFR_RNDD);
                
           }
           else { // i.e quadrantX == RIGHT
                    
                mpfr_sub (subZLOW,candidatePlaneZUP,z0UP,MPFR_RNDD);
                mpfr_sub (subZUP,candidatePlaneZUP,z0LOW,MPFR_RNDU);
                mpfr_mul (maxTZUP,subZLOW,divzLOW,MPFR_RNDU);
                mpfr_mul (maxTZLOW, subZUP, divzUP, MPFR_RNDD);
                
            } 
    }
    else { 
            mpfr_set_str (maxTZUP,thousand,10,MPFR_RNDN);
            mpfr_set_str (maxTZLOW,thousand,10,MPFR_RNDN);
    } 
    
    //get largest of maxT's for final choice of intersection
    
    if (mpfr_greater_p (maxTXUP,maxTYUP)) { // maxTX>maxTY
       
        if (mpfr_greater_p (maxTXUP,maxTZUP)) {
            mpfr_set (finalmaxTUP,maxTXUP,MPFR_RNDU); //maxTX>maxTZ-->finalmaxT=maxTX
            x = 1;
        }
        else {
            mpfr_set (finalmaxTUP,maxTZUP,MPFR_RNDU); //maxTX<maxTZ --> finalmaxT=maxTZ
            z = 1;
        }
    }
    else { //maxTY>maxTX
        
        if (mpfr_greater_p (maxTYUP,maxTZUP)) {
            mpfr_set (finalmaxTUP,maxTYUP,MPFR_RNDU); //maxTY>=maxTZ-->finalmaxT=maxTY
            y = 1;   
        }
        else {
            mpfr_set (finalmaxTUP,maxTZUP,MPFR_RNDU); //maxTY<maxTZ --> finalmaxT=maxTZ
            z = 1;
        }
    }
    
      if (mpfr_greater_p (maxTXLOW,maxTYLOW)) { // maxTX>maxTY
       
        if (mpfr_greater_p (maxTXLOW,maxTZLOW)) {
            mpfr_set (finalmaxTLOW,maxTXLOW,MPFR_RNDD); //maxTX>maxTZ-->finalmaxT=maxTX
            x = 1;
        }
        else {
            mpfr_set (finalmaxTLOW,maxTZLOW,MPFR_RNDD); //maxTX<maxTZ --> finalmaxT=maxTZ
            z = 1;
        }
    }
    else { //maxTY>maxTX
        
        if (mpfr_greater_p (maxTYLOW,maxTZLOW)) {
            mpfr_set (finalmaxTLOW,maxTYLOW,MPFR_RNDD); //maxTY>maxTZ-->finalmaxT=maxTY
            y = 1;   
        }
        else {
            mpfr_set (finalmaxTLOW,maxTZLOW,MPFR_RNDD); //maxTY<maxTZ --> finalmaxT=maxTZ
            z = 1;
        }
    }
    
    //check final candidate if acutally hits the box
    if (mpfr_less_p(finalmaxTLOW,zero)) return (0); // if finalmaxT<0 ,then ray misses the box
    
    if (x) {
        
        if (mpfr_greater_p(ydLOW,zero)) { //if direction positive
            
            mpfr_mul (maxT_ydUP,finalmaxTUP,ydUP,MPFR_RNDU);
            mpfr_add (coordYUP,maxT_ydUP,y0UP,MPFR_RNDU); //coordYUP
 
            mpfr_mul (maxT_ydLOW,finalmaxTLOW,ydLOW,MPFR_RNDD);
            mpfr_add (coordYLOW,maxT_ydLOW,y0LOW,MPFR_RNDD); //coordYLOW
        }
        else { //if direction negative
            
            mpfr_mul (maxT_ydUP,finalmaxTLOW,ydUP,MPFR_RNDU);
            mpfr_add (coordYUP,maxT_ydUP,y0UP,MPFR_RNDU); //coordYUP
 
            mpfr_mul (maxT_ydLOW,finalmaxTUP,ydLOW,MPFR_RNDD);
            mpfr_add (coordYLOW,maxT_ydLOW,y0LOW,MPFR_RNDD); //coordYLOW
        }
        
        if (mpfr_less_p (coordYUP,y1LOW) || mpfr_greater_p (coordYLOW,y2UP)) return (0);
        
        if (mpfr_greater_p(zdLOW,zero)) { //if direction positive
            
            mpfr_mul (maxT_zdUP,finalmaxTUP,zdUP,MPFR_RNDU);
            mpfr_add (coordZUP,maxT_zdUP,z0UP,MPFR_RNDU); //coordZUP
            
            mpfr_mul (maxT_zdLOW,finalmaxTLOW,zdLOW,MPFR_RNDD);
            mpfr_add (coordZLOW,maxT_zdLOW,z0LOW,MPFR_RNDD); //coordZLOW
        }
        else { //if direction negative
                       
            mpfr_mul (maxT_zdUP,finalmaxTLOW,zdUP,MPFR_RNDU);
            mpfr_add (coordZUP,maxT_zdUP,z0UP,MPFR_RNDU); //coordZUP
            
            mpfr_mul (maxT_zdLOW,finalmaxTUP,zdLOW,MPFR_RNDD);
            mpfr_add (coordZLOW,maxT_zdLOW,z0LOW,MPFR_RNDD); //coordZLOW
        }
        
        if (mpfr_less_p (coordZUP,z1LOW) || mpfr_greater_p (coordZLOW,z2UP)) return (0);
        
        return (1);
    }
    else if (y) {
         
        if (mpfr_greater_p(xdLOW,zero)) { //if direction positive
            
            mpfr_mul (maxT_xdUP,finalmaxTUP,xdUP,MPFR_RNDU);
            mpfr_add (coordXUP,maxT_xdUP,x0UP,MPFR_RNDU); //coordXUP
    
            mpfr_mul (maxT_xdLOW,finalmaxTLOW,xdLOW,MPFR_RNDD);
            mpfr_add (coordXLOW,maxT_xdLOW,x0LOW,MPFR_RNDD); //coordXLOW
        }
        else { //if direction negative
            
            mpfr_mul (maxT_xdUP,finalmaxTLOW,xdUP,MPFR_RNDU);
            mpfr_add (coordXUP,maxT_xdUP,x0UP,MPFR_RNDU); //coordXUP
            
            mpfr_mul (maxT_xdLOW,finalmaxTUP,xdLOW,MPFR_RNDD);
            mpfr_add (coordXLOW,maxT_xdLOW,x0LOW,MPFR_RNDD); //coordXLOW
        }
        
        if (mpfr_less_p (coordXUP,x1LOW) || mpfr_greater_p (coordXLOW,x2UP)) return (0);
           
        if (mpfr_greater_p(zdLOW,zero)) { //if direction positive
            
            mpfr_mul (maxT_zdUP,finalmaxTUP,zdUP,MPFR_RNDU);
            mpfr_add (coordZUP,maxT_zdUP,z0UP,MPFR_RNDU); //coordZUP

            mpfr_mul (maxT_zdLOW,finalmaxTLOW,zdLOW,MPFR_RNDD);
            mpfr_add (coordZLOW,maxT_zdLOW,z0LOW,MPFR_RNDD); //coordZLOW
        }
        else { //if direction negative
                       
            mpfr_mul (maxT_zdUP,finalmaxTLOW,zdUP,MPFR_RNDU);
            mpfr_add (coordZUP,maxT_zdUP,z0UP,MPFR_RNDU); //coordZUP

            mpfr_mul (maxT_zdLOW,finalmaxTUP,zdLOW,MPFR_RNDD);
            mpfr_add (coordZLOW,maxT_zdLOW,z0LOW,MPFR_RNDD); //coordZLOW
        }
        
        if (mpfr_less_p (coordZUP,z1LOW) || mpfr_greater_p (coordZLOW,z2UP)) return (0);
        
        return (1);
    }
    else if (z) {
                   
       if (mpfr_greater_p(xdLOW,zero)) { //if direction positive
            
            mpfr_mul (maxT_xdUP,finalmaxTUP,xdUP,MPFR_RNDU);
            mpfr_add (coordXUP,maxT_xdUP,x0UP,MPFR_RNDU); //coordXUP

            mpfr_mul (maxT_xdLOW,finalmaxTLOW,xdLOW,MPFR_RNDD);
            mpfr_add (coordXLOW,maxT_xdLOW,x0LOW,MPFR_RNDD); //coordXLOW
        }
        else { //if direction negative
            
            mpfr_mul (maxT_xdUP,finalmaxTLOW,xdUP,MPFR_RNDU);
            mpfr_add (coordXUP,maxT_xdUP,x0UP,MPFR_RNDU); //coordXUP

            mpfr_mul (maxT_xdLOW,finalmaxTUP,xdLOW,MPFR_RNDD);
            mpfr_add (coordXLOW,maxT_xdLOW,x0LOW,MPFR_RNDD); //coordXLOW
        }
            
        if (mpfr_less_p (coordXUP,x1LOW) || mpfr_greater_p (coordXLOW,x2UP)) return (0);
        
        if (mpfr_greater_p(ydLOW,zero)) { //if direction positive
            
            mpfr_mul (maxT_ydUP,finalmaxTUP,ydUP,MPFR_RNDU);
            mpfr_add (coordYUP,maxT_ydUP,y0UP,MPFR_RNDU); //coordYUP
            
            mpfr_mul (maxT_ydLOW,finalmaxTLOW,ydLOW,MPFR_RNDD);
            mpfr_add (coordYLOW,maxT_ydLOW,y0LOW,MPFR_RNDD); //coordYLOW
         }
         else { //if direction negative
            
            mpfr_mul (maxT_ydUP,finalmaxTLOW,ydUP,MPFR_RNDU);
            mpfr_add (coordYUP,maxT_ydUP,y0UP,MPFR_RNDU); //coordYUP

            mpfr_mul (maxT_ydLOW,finalmaxTUP,ydLOW,MPFR_RNDD);
            mpfr_add (coordYLOW,maxT_ydLOW,y0LOW,MPFR_RNDD); //coordYLOW
        }
        
        if (mpfr_less_p (coordYUP,y1LOW) || mpfr_greater_p (coordYLOW,y2UP)) return (0); 
        
        return (1);
    }
}