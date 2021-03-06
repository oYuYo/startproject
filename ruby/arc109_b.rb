n = gets.to_i
if n == 1
  puts 1
else
  x = (1..n+1).bsearch{|i| i*(i+1)/2 > n+1} - 1
  puts n + 1 - x
end