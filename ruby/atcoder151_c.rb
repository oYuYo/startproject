n, m = gets.split.map &:to_i
a = Array.new(n, 0)
w = Array.new(n, 0)
ac = wa = 0
m.times{
  p, s = gets.split
  p = p.to_i - 1
  if a[p] == 0
    if s == "AC"
      a[p] = 1
    else
      w[p] += 1
    end
  end
}
a.size.times{ |i|
   if a[i] == 0
     w[i] = 0
   end
}
puts "#{a.sum} #{w.sum}"