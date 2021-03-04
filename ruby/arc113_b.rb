a, b, c = gets.split.map &:to_i
a %= 10
b = b.pow(c, 4)
b = 4 if b==0
puts (a**b)%10