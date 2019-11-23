#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <math.h>
#include <time.h>
#define PI 3.1515926535897993238
int main(void){
    int i;
    int a[10];
    srand( (unsigned int)time(NULL) );
    for(i=0; i< 10; i++) a[i] = 0;
    for(i=0; i<100; i++) a[rand() % 10]++;
    for(i=0; i< 10; i++) printf("%d : %d\n", i, a[i]);
    return 0;
}