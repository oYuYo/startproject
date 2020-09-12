/*
 * マッカーシ関数
 * N以下の整数を与えると、91が返る
 */
#include <stdio.h>
#define N 100
int mccarthy(int a){
    if(a > N) return a - 10;
    return mccarthy(mccarthy(a + 11));
}
int main(void){
    int i;
    scanf("%d", &i);
    printf("%d\n",mccarthy(i));
    return 0;
}