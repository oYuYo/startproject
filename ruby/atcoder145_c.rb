n = gets.to_i
a = (1..n).to_a
a = a.permutation(n).to_a
s = readlines.map{|i| i.split(' ').map(&:to_i)}
sum = 0
a.each{ |i|
  b = i.to_a
  (b.size - 1).times{ |j|
    x = (s[b[j]-1][0] - s[b[j+1]-1][0])**2
    y = (s[b[j]-1][1] - s[b[j+1]-1][1])**2
    sum += Math.sqrt(x + y)
  }
}
puts sum / a.size
  
