#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define N 10
void shellsort(int n, int a[]){
    int h, i, j;
    int t;
    h = 13;
    while(h < n) h = 3 * h + 1;
    h /= 9;
    while(h > 0){
        for(i=0; i<n; i++){
            t = a[i];
            for(j=i-h; j>=0 && a[j]>t; j-=h)    //  hの間隔で比較, hを1にすると挿入ソートになる
                a[j+h] = a[j];
            a[j+h] = t;
        }
        h /= 3;     //  大雑把にソートし次第に間隔を小さくする
    }
}
int main(void){
    int x[10];
    srand((unsigned int)time(NULL));
    for(int i=0; i<N; i++){ x[i]=rand() % 10; printf("%d\t%d\n", i, x[i]); }
    shellsort(N, x);
    for(int i=0; i<N; i++) printf("%d\t%d\n", i, x[i]);
    return 0;
}