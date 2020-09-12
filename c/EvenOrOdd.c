//
//  偶数か奇数か
//  以下を参考に作成
//  https://jp.quora.com/puroguramingu-deha-if-bun-wo-shi-wa-zu-ni-kisuu-ka-guusuu-wo-dou-ya-tte-fun-ka-ri-masu-ka
//

#include <stdio.h>

int main(void){

/*   AND    */
    int in_;
    char Dec_[2][5] = { "Even", "Odd" };

    printf("input integer\n");
    scanf("%d", &in_);

    printf("%s\n", Dec_[in_ & 0x01]);

/*   三項演算子    */
    (in_ & 0x01) > 0 ? printf("Odd\n") : printf("Even\n");
    return 0;
}