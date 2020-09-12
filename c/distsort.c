#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define MAX 100
#define MIN 0
void distsort(int n, int a[], int b[]){
    int x;
    int count[MAX - MIN + 1];
    for(int i=0; i<=MAX - MIN; i++) count[i] = 0;
    for(int i=0; i<n; i++) count[a[i] - MIN]++;
    for(int i=1; i<MAX - MIN; i++) count[i] += count[i -1];
    for(int i=n-1; i>=0; i--){
        x = a[i] - MIN;
        b[--count[x]] = a[i];
    }
}
int main(void){
    int x[MAX -MIN + 1], y[MAX -MIN + 1];
    srand((unsigned int)time(NULL));
    for(int i=0; i<=MAX -MIN; i++) x[i] = rand() % MAX;
    for(int i=0; i<100; i++) printf("%d\t%d\n", i, x[i]);
    distsort(MAX -MIN + 1, x, y);
    for(int i=0; i<100; i++) printf("%d\t%d\n", i, y[i]);
    return 0;
}