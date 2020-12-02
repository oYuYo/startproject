#include<stdio.h>
int main(void){
  long long int n;
  long long int ans = 0;
  scanf("%lld", &n);
  for(int i=1; i<=n; i++)
    for(int j=i; j<=n; j+=i)
      ans += j;
  printf("%lld\n", ans);
  return 0; 
}