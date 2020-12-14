n = gets.to_i
a = gets.split(" ").map(&:to_i).sort
a.uniq!
if a.size == 1
  puts a[0]
  exit
end
min = a[0]
max = a[-1]
loop{
  if max%min == 0
    a.pop
    max = a[-1]
  else
    a.pop
    a.unshift(max%min)
    max = a[-1]
    min = a[0]
  end
  break if a.size == 1
  }
  puts a[0]