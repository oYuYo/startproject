#include <stdio.h>
#include <math.h>
#define N 10
#define x_max 210
#define y_max 130
void plot_start(void){
    //  SVGタグの指定　http://www.w3.org/2000/svg versionは最新版を指定
    printf("<svg xmlns=\"http://www.w3.org/2000/svg\" version=\"1.1\" width=\"%d\" height=\"%d\">\n", x_max, y_max);
//    printf("<path>");
}
void plot_end(void){
 //   printf("\" fill=\"none\" stroke=\"black\" />\n");   //  線の色は stroke，内部の色は fill，線の幅は stroke-width で指定する
    printf("</svg>\n");
}
void line(int _x, int _y, int _a, int _d){
    printf("M%d,%d L");
}
void rect(int _x, int _y, int _a, int _b){
    printf( "<rect x=\"%d\" y=\"%d\" width=\"%d\" height=\"%d\" stroke=\"black\" fill=\"none\"/>\n", _x, _y, _a, _b );
}
int func(int n){
    if(n==0) return 0;
    else if(n==1 || n==2) return 1;
    else if(n > 2) return func(n-2) + func(n-1);
}
int main(void){
    int a[N];
    int x, y;
    double s = sqrt(2);
    for(int i=0; i<N; i++) a[i] = func(i) * 10;
    plot_start();
    x = x_max/2;
    y = y_max/2;
    rect(0, 0, x_max, y_max);
    rect(x, y, a[1], a[1]);
    plot_end();






    return 0;
}
