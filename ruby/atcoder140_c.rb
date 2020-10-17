n = gets.to_i
b = gets.split(" ").map(&:to_i)
a = Array.new(n, 0)
n.times{ |i|
  if i == 0
    a[i] = b[i]
  elsif i == n-1
    a[i] = b[n-2]
  else
    a[i] = [b[i-1], b[i]].min
  end
}
puts a.sum