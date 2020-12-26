#include<stdio.h>
#include<math.h>
typedef long long int ll;
int main(void){
  ll x, y, i, j;
  scanf("%lld", &x);
  y = (ll)sqrt(x);
  for(i=0; i<=y; i++){
      for(j=0; j<=y; j++){
        ll a, b;
        a = i*i*i*i*i;
        b = j*j*j*j*j;
        if((a-b)==x){
          printf("%lld %lld\n", i, j);
          return 0;
        }else if((a+b)==x){
          printf("%lld %lld\n", i, -j);
          return 0;
        } 
      }
  }
  return 0;
}