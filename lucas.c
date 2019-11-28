#include <stdio.h>
int lucas(int p){
    int i, j, h, k, s;
    char a[100], x[100];
    for(i=0; i<p; i++) a[i]=0;  //  p bit ?
    a[2] = 1;                   //  0100 = 4 ?
    for(k=2; k<p; k++){
        for(i=0; i<p; i++){
            x[i] = a[i];
            a[i] = 1;
        }
        a[1] = 0;
        for(i=0; i<p; i++){
            if(x[i]){
                s = 0;
                h = i;
                for(j=0; j<p; j++){
                    s = (s >> 1) + a[h] + x[j];
                    a[h] = s & 1;
                    h = (h+1) % p;
                }
                if(s > 1){
                    while(a[h]){
                        a[h] = 0;
                        h = (h+1) % p;
                    }
                    a[h] = 1;
                }
            }
        }
    }
    a[p] = 1 - a[0];
    i = 1;
    while(a[i] == a[0]) i++;
    return (i == p);
}
int main(void){
    for(int i=10; i<100; i++) printf("%d\t%d\n", i, lucas(i));
    return 0;
}