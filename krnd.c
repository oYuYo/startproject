#include <stdio.h>
#include <stdlib.h>
#define MRND 1000000000
static int jrand;
static int ia[56];

static void irnd55(void){
    int i, j;

    for(i=1; i<=24; i++){
        j = ia[i] - ia[i+31];
        if(j < 0) j += MRND;
        ia[i] = j;
    }
}
void init_rnd(unsigned int seed){
    int i, ii, k;

    ia[55] = seed;
    k = 1;
    for(i=1; i<=54; i++){
        ii = (21 * i) % 55;
        ia[ii] = k;
        k = seed - k;
        if(k < 0) k += MRND;
        seed = ia[ii];
    }
    irnd55();
    irnd55();
    irnd55();
    jrand = 55;
}
int irnd(void){
    if(++jrand > 55) { irnd55(); jrand = 1; }
    return ia[jrand];
}
double rnd(void){
    return (1.0 / MRND) * irnd();
}
int main(void){
    int i;
    init_rnd(12345);
    for(i=0; i<160; i++) printf("%f", rnd());
    return 0;
}