#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define MAX 10
void mergesort(int x[], int first, int last){
    int mid, i, j, k;
    int temp[MAX];
    if(first >= last)
        return;

    mid = (first + last) / 2;
    mergesort(x, first, mid);
    mergesort(x, mid+1, last);
    for(i=first; i<=mid; i++) temp[i] = x[i];
    for(i=mid+1, j=last; i<=last; i++, j--) temp[i] = x[j];

    i = first;
    j = last;
    for(k=first; k<=last; k++)
        if(temp[i] <= temp[j])
            x[k] = temp[i++];
        else
            x[k] = temp[j--];
}
int main(void){
    int i, x[MAX];
    srand( (unsigned int)time(NULL) );
    for(i=0; i<MAX; i++) x[i] = rand() % 10;
    for(i=0; i<MAX; i++) printf("%d\t%d\n", i, x[i]);
    mergesort(x, 0, MAX);
    for(i=0; i<MAX; i++) printf("%d\t%d\n", i, x[i]);
    return 0;
}