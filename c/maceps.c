/*
 *      1を加えたときに１より大となる最小の数
 *  
 */
#include <stdio.h>
int main(void){
     float e=1, w = 1 + e;
    while(w>1.0){
        printf("% -14g % -14g % -14g\n", e, w, w-1);
    e /=2;
    w = 1.0 + e;
    }
     return 0;
 }