#include <stdio.h>
int main(void) {
	long long int n;
    scanf("%lld", &n);
    long long int a[n];
    for(int i=0; i<n; i++) scanf("%lld", &a[i]);
    //for(int i=0; i<n; i++) printf("%d\n", a[i]);
    long long int sum_height = 0;
    for(int i=1; i<n; i++){
    	if(a[i] < a[i-1]){
        	sum_height += a[i-1] - a[i];
            a[i] = a[i-1];
        }
    }
    printf("%lld\n", sum_height);
    return 0;
}