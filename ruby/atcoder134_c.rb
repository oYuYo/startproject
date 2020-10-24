n = gets.to_i
a = readlines.map &:to_i
b = a.sort.reverse
max = b[0]
n.times{ |i|
  if b[0] == a[i]
    puts b[1]
  else
    puts b[0]
  end  
  }