/*
 *  i = 1           int型
 *  &i              アドレスを示す
 *  (char *)&i      intからchar型のメモリサイズへ型キャスト, 4byteを1byteずつメモリへ格納
 *                  エンディアンによって格納順が異なる
 *  *((char *)&i)   char型のポインタとして扱い, その先頭アドレスをさす
 * 
 */    
#include <stdio.h>
int main(void){
    int i = 1;
    char *c;
    printf("%d\n", i);
    c = &*((char *)&i);
    printf("%d\n", *(c++)); //1byte目
    printf("%d\n", *(c++)); //2byte目
    printf("%d\n", *(c++)); //3byte目
    printf("%d\n", *(c++)); //4byte目
    if(*((char *)&i))
        printf("little endian\n");
    else if(*((char *)&i + (sizeof(int) - 1)))
        printf("big endian\n");
    else
        printf("unknown");
    return 0;
}