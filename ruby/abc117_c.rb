n, m = gets.split.map(&:to_i)
x = gets.split.map(&:to_i).sort
if n>=m
  puts 0
  exit
end
sum = x[-1]-x[0]
y = []
(m-1).times do |i|
  y.push(x[i+1]-x[i])
end
y.sort!.reverse!
(n-1).times do |i|
  sum -= y[i]
end
puts sum
