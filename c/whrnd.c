/*
 * Wichmann-Hillの乱数生成法
 * 16bit整数でも十分な精度と周期が得られるように工夫された
 * 線形合同法による生成法
 */
#include <stdio.h>
static int ix=1, iy=1, iz=1;
void init_rnd(int x, int y, int z){
    ix = x;
    iy = y;
    iz = z;
}
double rnd(void){
    double r;
    ix = 171 * (ix % 177) - 2  * (ix / 177);
    iy = 172 * (iy % 176) - 35 * (iy / 176);
    iz = 170 * (iz % 178) - 63 * (iz / 178);
    if(ix < 0) ix += 30269;
    if(iy < 0) iy += 30307;
    if(iz < 0) iz += 30323;
    r = ix / 30269.0 + iy / 30307.0 + iz / 30323.0;
    while(r >= 1) r = r - 1;
    return r;
}
int main(void){
    init_rnd(101, 202, 303);
    for(int i=0; i<10; i++) printf("%d\t%lf\n", i, rnd());    
    return 0;
}