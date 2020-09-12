/*
*   2018/12/12
*   ver1 作成
*   素数抽出 力技編
*/
#include <stdio.h>

int main(void){

    printf("2\n3\n5\n7\n");
    for(int i=11; i<100; i+=2){
        if((i%3)!=0)
            if((i%5)!=0)
                if((i%7)!=0)
                    printf("%d\n", i);
    }
    return 0;
}