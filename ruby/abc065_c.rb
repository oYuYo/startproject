mod = 10**9+7
n, m = gets.split.map &:to_i
(puts 0; exit) if (n-m).abs > 1
a = (1..n).inject(1){|r, i| (r*i)%mod}
b = (1..m).inject(1){|r, i| (r*i)%mod}
puts n==m ? ((a*b)%mod*2)%mod : (a*b)%mod