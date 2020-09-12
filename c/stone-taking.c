#include <stdio.h>
#include <stdlib.h>

int main(void){
    int n, m, x, r, my_turn;

    printf("Is number of stone ?\n");
    scanf("%d", &n);
    printf("Max number of taking stone is :\n");
    scanf("%d", &m);

    if(n < 1 || m < 1) return 1; // err
    for(my_turn=1;n!=0;my_turn^=1){
        if(my_turn){
            x = (n-1) % (m+1);  // my turnで (m+1)*k+1 であるか判定し、(m+1)*kへ調整する
            if(x == 0)
                x = 1;
            printf("I take number of %d\n", x);
        }else do{
            printf("do you take number of stone ?\n");
            r = scanf("%d", &x);    //  scanfは、読み込んだデータ個数を返す
            scanf("%*[^\n]");
/*scanf(%[abc])  : a,b,cに一致する文字のみ読み込む*/
/*scanf(%[^abc]) : a,b,cに一致するまで文字を読み込む*/
        }while(r != 1 || x <= 0 || x > m || x > n);
        n -= x;
        printf("remain of stone number is %d\n", n);
    }
    if(my_turn) printf("you are loser\n");
    else printf("you are winner\n");
    return 0;
}