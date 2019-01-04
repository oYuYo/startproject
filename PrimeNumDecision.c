/*
*   2018/12/26
*   ver1 作成
*   素数判定　但し4byte
*/
#include <stdio.h>

int main(void){

    char line[12]; // int(4byte)格納できるサイズ
    int in_value;  // -2147483648 ～ 2147483647

    printf("Input Any Number\n");
    fgets(line, sizeof(line), stdin);
    sscanf(line, "%d", &in_value);

    if( (in_value==2) || (in_value==3) || (in_value==5) || (in_value==7) ){
        printf("%d is prime number\n", in_value);
    }
    else if( (in_value <= 1) || ((in_value%2)==0) || ((in_value%3)==0) || ((in_value%5)==0) || ((in_value%7)==0) ){
        printf("%d is not prime number\n", in_value);
    }else{
        printf("%d is prime number\n", in_value);
    }

 return 0;
}
