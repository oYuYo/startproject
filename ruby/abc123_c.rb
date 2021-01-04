n = gets.to_i
a = []
b = []
5.times do 
  a.push(gets.to_i)
  b.push((n.to_f/a[-1]).ceil)
end
puts b.max+4