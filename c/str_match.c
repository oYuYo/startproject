#include <stdio.h>
int str_match(char s1[], char s2[]){
    int i, j;
    i = j = 0;
    while(s1[i] != '\0' && s2[j] != '\0' )
        if(s1[i] == s2[j]) {i++; j++;}
        else{ i = i-j+1; j = 0; }
    if(s2[j] == '\0') return i - j;
    return -1;
}
int main(void){
    char text[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    char pattern[] = "OPQ";
    printf("%s\t%s\t%d\n", text, pattern, str_match(text, pattern));
    return 0;
}