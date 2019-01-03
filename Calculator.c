#include <stdio.h>
#include <math.h>

/****************************\
 ****************************
            電卓
機能：四則演算のみ
改訂履歴
ver1　作成・・・2018/11/11
 ****************************
\****************************/
int main(void){
    char ope;
    double in_value, out_value = 0.0;
    char line[256];

    while(1){
        printf("Enter operation and value\n");
        fgets(line, sizeof(line), stdin);
        sscanf(line, "%c%lf", &ope, &in_value);
        printf("%c %lf\n", ope, in_value);
        if( (ope == 'q') || (ope == 'Q') ) break; // escape
        if( ope == '+' ){
            out_value += in_value;
        }else if( ope == '-' ){
            out_value -= in_value;
        }else if( ope == '*' ){
            out_value *= in_value;
        }else if( ope == '^' ){
            out_value = pow( out_value, in_value );
        }else if( ope == '/' ){
            if(in_value == 0){
                printf("can not devide by 0");
                continue;
            }else{
                out_value /= in_value;
            }
        }else{
            printf("Unknown operation = %c\n", ope);
        }
        printf("Result = %lf\n", out_value);
    }
    return 0;
}