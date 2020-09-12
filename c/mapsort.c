#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define N 24
#define MAX 13
#define MIN 1
void new_arr(int *arr){
    for(int i=0; i<N; i++)
        arr[i] = 0;
}
void mapsort(int n, int *a, int *b, int *next){
    int i, j, x;
    static int index[MAX - MIN + 1];
    for(x=0; x<MAX - MIN; x++) index[x] = -1;
    for(i=n-1; i>=0; i--){
        x = a[i] - MIN;
        next[i] = index[x];
        index[x] = i;   /*  a[ index[x] ], x-> MAXと書きだせば、昇順となる。
                            a[i]=a[j]=a[k]である時は, next[i]=j, next[j]=k, next[k]=-1 とつなげる   */
    }
    j = 0;
    for(x=0; x<=MAX-MIN; x++){
        i = index[x];
        while(i >= 0){
            b[j++] = a[i];
            i = next[i];
        }
    }
}
int main(void){
    int in_arr[N], out_arr[N], work[N];
    new_arr(in_arr);
    new_arr(out_arr);
    new_arr(work);

    printf("Before\n");
    srand( (unsigned int)time(NULL) );
    for(int i=0; i<N; i++){
        in_arr[i] = rand()%MAX + MIN;
        printf("%d\n", in_arr[i]);
    }
    mapsort(N, in_arr, out_arr, work);
    printf("After\n");
    for(int i=0; i<N; i++)
        printf("%d\n", out_arr[i]);
    return 0;
}