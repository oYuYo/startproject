#素因数分解が有効
#p = ai = a1+a2+a3+...+an, ai = a^(1/n)の時GCD_Maxとなる
#100 => 2*50よりも10*10
#このとき各素因数をan個へ均等に振り分けるとaiが最大化される
require 'prime'
n, p = gets.split(" ").map &:to_i
fc = Prime.prime_division(p)
ans = 1
fc.each do |p, e|
  if e>=n
    ans *= p**(e/n)
  end
end
puts ans