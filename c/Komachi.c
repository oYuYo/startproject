/*
 * 小町算
 * 123 - 45 - 67 + 89 = 100
 * 上述のように、1～9の数字を順に並べ、
 * ＋、―を用いて、100を作成するパズル
 * 
 */
#include <stdio.h>
int main(void){
    int sign[10];
    int i, s;
    long n, x;

    for(i=1; i<=9; i++){
        sign[i] = -1;
    }
    
    do{
        x = n = 0;
        s = 1;
        for(i=1; i<=9; i++){
            if(sign[i] == 0){
                n = 10 * n + i;
            }else{
                x += s * n;
                s = sign[i];
                n = i;
            }
        }
        x += s * n;
        if(x == 100){
            for(i=1; i<=9; i++){
                if(sign[i] == 1){
                    printf(" + ");
                }else if(sign[i] == -1){
                    printf(" - ");
                }
                printf("%d", i);
            }
            printf(" = 100\n");
        }
        i = 9;
        s = sign[i] + 1;
        while(s > 1){
            sign[i] = -1;
            i--;
            s = sign[i] + 1;
        }
        sign[i] = s;
    } while (sign[1] < 1);
    return 0;
}