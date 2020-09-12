#include <stdio.h>
/*
 *  nＣk = n-1Ｃk-1 + n-1Ｃk 
 */
int comb_1(int n, int k){
    if(k==0 || k==n) return 1;
    return comb_1(n-1, k-1) + comb_1(n-1, k);
}
/*
 *  組み合わせの表を用いた方法 
 */
unsigned long comb_2(int n, int k){
    int i, j;
    unsigned long a[17];

    if(n-k < k) k = n-k;
    if(k == 0) return 1;
    if(k == 1) return n;
    if(k > 17) return 0;    /*   17より大きい場合、桁あふれとなる   */
    for(i=1; i<k; i++){
        a[i] = i + 2;
    }
    for(i=3; i<=n-k+1; i++){
        a[0] = i;
        for(j=1; j<k; j++){
            a[j] += a[j-1];
        }
    }
    return a[k-1];
}
int main(void){
    int i=5, j=2;
    printf("%d\n", comb_2(i, j));
    return 0;
}