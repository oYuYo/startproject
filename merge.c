#include <stdio.h>
int main(void){
    int i=0, j=0, k=0;
    int na=10, nb=10;
    int a[na], b[nb], c[na+nb];
    for(i=0;i<na+nb;i++){ if(i%2) a[j++]=i; else b[k++]=i; }
    for(i=0;i<na;i++)
        printf("%d\t%d %d\n", i, a[i], b[i]);
    i = j = k = 0;
    while(i < na && j < nb)
        if(a[i] <= b[j]) c[k++] = a[i++];
        else             c[k++] = b[j++];
    while(i < na) c[k++] = a[i++];
    while(j < nb) c[k++] = b[j++];
    for(i=0;i<na+nb;i++)
        printf("%d\t%d\n", i, c[i]);
    return 0;
}