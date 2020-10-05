n = gets.to_i
p = gets.split(" ").map &:to_i
count = 0
min = p[0]
n.times{ |i|
  min = p[i] if min > p[i]
  if p[i] <= min
    count += 1
  end
}
puts count