/* リスト
 * i番目のデータをarray[i]に格納する方法では、要素の挿入や削除に時間がかかる。
 * そこで、データは適当に格納しておくが、
 * このとき最初の要素の位置を示すheadと各要素の次の要素を示すnextを使って
 * 1次元的につなぐデータ構造としておく。
 * head=5, next[5]=8, next[8]=3, next[3]=...
 */
#include <stdio.h>
#include <stdlib.h>
typedef int infotype;
typedef struct item{
    infotype info;
    struct item *next;
} *pointer;
pointer add_list(infotype x, pointer p){
    pointer q;
    q = malloc(sizeof *q);
    if(q == NULL){ printf("メモリ不足\n"); exit(1); }
    q->info = x;
    q->next = p;
    return q;
}
void show_list(pointer p){
    while (p != NULL){
        printf(" %d", p->info);
        p = p->next;
    }
    printf("\n");
}
pointer reverse_list(pointer p){
    pointer q, t;
    q = NULL;
    while(p != NULL){
        t = q;
        q = p;
        p = p->next;
        q->next = t;
   }
   return q;
}
int main(void){
    infotype x;
    pointer head;

    head = NULL;
    for(x=1; x<=9; x++) head = add_list(x, head);
    show_list(head);
    head = reverse_list(head);
    show_list(head);
    return 0;
}