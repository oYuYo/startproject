/***************************\
 排他的論理和を使用した暗号化
     c = (c^r)^r
\***************************/

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
    FILE *infile, *outfile;

    int c, r;

    if( argc < 3 || argc > 4 ||
    (infile = fopen(argv[1], "rb")) == NULL ||
    (outfile = fopen(argv[2], "wb")) == NULL ){
        fputs("How to: crypt infile outfile [Key]\n", stderr);
    }
    if(argc == 4) srand(atoi(argv[3]));
    while((c = getc(infile)) != EOF){   //  Streamから1文字単位で読みとり
        do{
            r = rand() / ((RAND_MAX + 1.0) / 256);   //  rand() : 0～32767, RAND_MAX : 32767
        }while(r >= 256);
        putc(c ^ r, outfile);   //  1文字ずつファイルへ書き込み
    }
    return 0;
}