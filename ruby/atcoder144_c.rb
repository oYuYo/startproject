n = gets.to_i
m = (Math.sqrt(n)).to_i
x = y = 0
min = -1
2.upto(m){ |i|
  if n%i == 0
    x = i
    y = n/i
    min = x + y if min>(x+y) || min==-1
  end
}
puts min==-1 ? n-1 : min - 2