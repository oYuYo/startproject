#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <math.h>
#include <time.h>
#define PI 3.1515926535897993238
#define rnd (rand() * 1.0/(RAND_MAX + 1.0))
int main(void){
    int i;
    int a[10];
    srand( (unsigned int)time(NULL) );
    printf("乱数\n");
    for(i=0; i< 10; i++) a[i] = 0;
    for(i=0; i<100; i++) a[rand() % 10]++;
    for(i=0; i< 10; i++) printf("%d : %d\n", i, a[i]);

    printf("疑似正規分布乱数\n");
    double x;
    for(i=0; i< 10; i++) a[i] = 0;
    for(i=0; i<100; i++){
        x = rnd + rnd + rnd + rnd + rnd + rnd + rnd + rnd + rnd + rnd;
        a[(int)x]++;
    }
    for(i=0; i< 10; i++) printf("%d : %d\n", i, a[i]);
 

    return 0;
}