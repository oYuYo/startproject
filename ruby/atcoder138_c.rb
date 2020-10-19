gets
v = gets.split.map(&:to_i).sort
i = 0
while v[i+1] != nil
  v[i+1] = (v[i]+v[i+1])/2.0
  i += 1
end
puts v[i]