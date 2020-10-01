n = gets.to_i
x = gets.split(" ").map &:to_i
ans = -1
for i in x.min..x.max
  sum = 0
  x.length.times{ |j|
    sum += (x[j] - i)**2
  }
  if ans > sum || ans == -1
    ans = sum
  end 
end
puts ans