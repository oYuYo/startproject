#include <stdio.h>
int main(void) {
	int n;
    scanf("%d", &n);
    long long int /*入力用*/a[n], /*累積和*/b[n+1];
  	for(int i=0; i<n+1; i++) b[i] = 0;
  
    for(int i=0; i<n; i++){
    	scanf("%lld", &a[i]);
        //printf("%d\n", a[i]);
        b[i+1] = b[i] + a[i];	//累積和を格納
    }
    long long int y = 0;
    int m = 1000000007;
    for(int i=0; i<n; i++){
		y += (a[i] * ((b[n] - b[i+1]) % m) % m);	//区間面積の和を更新
    }
    printf("%lld\n",  y%m);
    return 0;
}