#include <stdio.h>
#include <stdlib.h>
int main(void){
    int year, month, day, dayofweek;
    char name[7][10] = {
                        "Sunday",
                        "Monday",
                        "Tuesday",
                        "Wednesday",
                        "Thursday",
                        "Friday",
                        "Saturday"
                        };
    printf("year ?\n", year);   scanf("%d", &year);
    printf("month ?\n", month); scanf("%d", &month);
    printf("day ?\n", day);     scanf("%d", &day);

    if(month < 3) { year--; month += 12; }
    dayofweek = (year + year/4 - year/100 + year/400 + (13*month+8) / 5 + day) % 7;
    printf("it's %s.\n", name[dayofweek]);
    return 0;
}