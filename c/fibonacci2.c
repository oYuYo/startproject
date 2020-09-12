#include <stdio.h>
int func(int n){
    if(n==0) return 0;
    else if(n==1 || n==2) return 1;
    else if(n > 2) return func(n-2) + func(n-1);
}
int main(void){
    int n;
    for(n=1; n<=10; n++)
        printf("%d\n", func(n));
    return 0;    
}