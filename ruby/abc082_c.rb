n = gets.to_i
a = gets.split.map &:to_i
b = [0]*(10**5+1)
ans = 0
a.each do |x|
  if x>10**5
    ans += 1
  else
    b[x] += 1
  end
end
b.each.with_index do|y, i|
  if y!=i && y>0
    if y>i
      ans += y-i
    else
      ans += y
    end
  end
end
puts ans