n, k = gets.split.map &:to_i
a = gets.split.map &:to_i
s = 0
(n-k).times{ |i|
  if a[i] < a[i+k]
    puts "Yes"
  else
    puts "No"
  end
  }