n = gets.chomp.to_i
#p n
ans = n % 1000
ans = ans == 0 ? 0 : 1000 - ans
p ans