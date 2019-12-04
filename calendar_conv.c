#include <stdio.h>
int main(void){
    int n;
    printf("this is a conversion western to japanese calendar\n");
    printf("please enter the year at 4 digits\n"); scanf("%d", &n);
    int num=n, d=0;
    while(num != 0){
        num /= 10; d++;
    }
    if(d != 4){ printf("input correctly. go back home and play tumbler.\n"); return 0; }

    if(n < 1868){
        printf("no support in this system.\ngo back home.\n");
    }else if(n == 1868){
        printf("'Meiji' start from 1868/09/08.\n");
    }else if( (1868<n) && (n<1912) ){
        printf("Meiji %d\n", (n - 1867));
    }else if(n == 1912){
        printf("1912 is 'Meiji 44'. But it is end to 1912/07/29.\n");
        printf("'Taisho' start from 1912/07/30.\n");
    }else if( (1912<n) && (n<1926) ){
        printf("Taisho %d\n", (n - 1911));
    }else if(n == 1926 ){
        printf("1926 is 'Taisho 14'. But it is end to 1926/12/24.\n");
        printf("'Showa' start from 1926/12/25.\n");
    }else if( (1926<n) && (n<1989) ){
        printf("Showa %d\n", (n - 1925));
    }else if(n == 1989){
        printf("1989 is 'Showa 63'. But it is end to 1989/01/07.\n");
        printf("'Heisei' start from 1989/01/08.\n");
    }else if( (1989<n) && (n<2019) ){
        printf("Heisei %d\n", (n - 1988));
    }else if(n == 2019){
        printf("2019 is 'Heisei 30'. But it is end to 2019/04/30.\n");
        printf("'Reiwa' start from 2019/05/01.\n");
    }else{
        printf("Reiwa %d\n", (n - 2018));
    }
    return 0;
}