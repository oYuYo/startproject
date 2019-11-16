//-------------------
//
//  うるう年判定
//  以下参考
//  https://support.microsoft.com/ja-jp/help/214019/method-to-determine-whether-a-year-is-a-leap-year
//
//-------------------

#include <stdio.h>

int main(void){

    int in_num;
    printf("input any year\n");
    scanf("%d", &in_num);

    if( (in_num%4)==0 ){
        if( (in_num%100)==0 ){
            if( (in_num%400)==0 ){
                printf("%d is leap year\n", in_num);
            }else{
                printf("%d is not leap year\n", in_num);
            }
        }else{
            printf("%d is leap year\n", in_num);
        }
    }else{
        printf("%d is not leap year\n", in_num);
    }
    return 0;
}


