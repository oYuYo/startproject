#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define _RAND_MAX 32768
static unsigned long next = 1;
int rand(void){
    next = next * 1103515245 + 12345;
    return (unsigned)(next / 65536) % _RAND_MAX;
}
void srand(unsigned seed){
    next = seed;
}
int main(void){
    srand((unsigned)time(NULL));
    printf("%d\n",rand());
    return 0;
}