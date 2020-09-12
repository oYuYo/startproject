/*
 *  挿入ソート
 *  keyを決め、その数よりも大きいものは右へずらしていく
 * 
 */
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int ins_sort(int n, int _a[]){
    int i, j;
    int key;
    for(i=1; i<n; i++){
        key = _a[i];
        for(j=i-1; j>=0 && _a[j]>key; j--){ //  &&の前が偽なら後は評価されない
            _a[j+1] = _a[j];
        }
        _a[j+1] = key;
    }
}
int main(void){
    int a[10];
    srand( (unsigned int)time(NULL) );
    for(int i=0; i<10; i++){
        a[i] = rand() % 10;
        printf("%d : %d\n", i, a[i]);
    }
    ins_sort(10, a);
    for(int i=0; i<10; i++) printf("%d : %d\n", i, a[i]);
    return 0;
}