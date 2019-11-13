#include <stdio.h>
void print_Byte(char a){
    printf("%c%c%c%c%c%c%c%c\n"
    , a & 128 ? '1' : '0'
    , a &  64 ? '1' : '0'
    , a &  32 ? '1' : '0'
    , a &  16 ? '1' : '0'
    , a &   8 ? '1' : '0'
    , a &   4 ? '1' : '0'
    , a &   2 ? '1' : '0'
    , a &   1 ? '1' : '0');
}
int main(){
    char ax=8;
    ax = ax << 2;
    print_Byte(ax);
    return 0;
}