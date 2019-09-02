//
//  偶数か奇数か
//  以下を参考に作成
//  https://jp.quora.com/puroguramingu-deha-if-bun-wo-shi-wa-zu-ni-kisuu-ka-guusuu-wo-dou-ya-tte-fun-ka-ri-masu-ka
//

#include <stdio.h>

int main(void){

    unsigned int in_;
    char Dec_[2][5] = { "Even", "Odd" };

    printf("input positive integer\n");
    scanf("%d", &in_);

    printf("%s\n", Dec_[in_ & 0x01]);

    return 0;
}

