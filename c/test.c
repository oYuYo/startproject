#include <stdio.h>
#include <stdlib.h>

typedef _Bool bool;

typedef struct {
    int begin;
    int end;
} Range;
_Bool Range_Check(Range Own_t, Range Other_t){
    if(Other_t.end <= Own_t.begin) return 1;
    if(Other_t.begin > Own_t.end) return 1;
    return 0;
}
int main(void){
    int user_id = 10;
    int document_onwer_id = 10;
    bool can_document_edit = (user_id == document_onwer_id);
    printf("%s\n", can_document_edit ? "true" : "false");

    /***************************************************/

    Range A = {1, 3};
    Range B = {3, 6};
    Range C = {6, 8};
    Range D = {2, 8};

    printf("%s\n", Range_Check(A, B) == 0 ? "true" : "false");

    int *data;
    data = (int *)malloc(sizeof(int) * 100);
    printf("%d\n", sizeof(data));
    //sizeofの代用
    int ans;
    ans = (int)&(((int*)0)[1]);     //0をint型ポインタでキャストし、配列[1]番目のアドレスを読み出しint型にキャスト
    printf("%d\n", sizeof(ans));
    return 0;
}