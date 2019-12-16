/* Collatz予想 または角谷予想
 * どのような整数に対しても
 * 収束する
 */
#include <stdio.h>
int main(void){
    int n, cnt = 0;
    printf("input integer num ->\n"); scanf("%d", &n);
    while(n > 1){
        if(n & 1) n = n*3+1;
        else n/=2;
        cnt++;
    }
    printf("count = %d\n", cnt);
    return 0;
}