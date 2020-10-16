n, k, q = gets.split.map &:to_i
m = Array.new(n, 0)
q.times{ |i|
  m[gets.to_i-1] += 1
}
n.times{ |i|
  puts k-q+m[i]>0? 'Yes':'No' 
}