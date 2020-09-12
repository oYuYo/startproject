#include <stdio.h>
void movedisk(int n, int a, int b){
    if(n > 1) movedisk(n-1, a, 6-a-b);
    printf("%d disks move to %d from %d\n", n,b, a);
    if(n > 1) movedisk(n-1, 6-a-b, b);
}
int main(void){
    int n;
    printf("how many disks ?");
    scanf("%d", &n);
    printf("the way how to move %d disks to 2nd tower from 1st tower is %d\n", n, (1UL << n)-1);    //  2^n - 1
    movedisk(n, 1, 2);
    return 0;
}