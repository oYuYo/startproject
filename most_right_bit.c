/*   最も右のbitを残して0埋め   */
#include <stdio.h>
#include "printf_Byte.c"
int main(void){
    unsigned char x=255;
    print_Byte(x);
    x = x & -x;
    print_Byte(x);
    return 0;
}