n = gets.to_i
a = gets.split(" ").map(&:to_i)
i = j = 0
loop{
  if a[i] != i+1
    a.shift
    j += 1
  else
    i += 1
  end
  if a.size <= i
    break
  end
}
puts a.size == 0 ? -1 : j