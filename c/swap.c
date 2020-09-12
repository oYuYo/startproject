#include <stdio.h>


int main(void){
    int a, b, temp;
    a = 1;
    b = 2;
    printf("a=%d\tb=%d\n", a, b);
    temp = b; b = a; a = temp;
    printf("a=%d\tb=%d\n", a, b);
    b ^= a; a ^= b; b ^= a;
    printf("a=%d\tb=%d\n", a, b);
    b = a-b; a-= b; b += a;
    printf("a=%d\tb=%d\n", a, b);
    return 0;
}