n = gets.to_i
a = []
n.times{
  x, y = gets.split.map(&:to_i)
  a.push([x, y])
  }
for i in 0..a.size-1
  for j in 0..i-1
    for k in 0..j-1
      x1 , y1 = a[i][0], a[i][1]
      x2 , y2 = a[j][0], a[j][1]
      x3 , y3 = a[k][0], a[k][1]
      x1 -= x3
      x2 -= x3
      y1 -= y3
      y2 -= y3
      if x1*y2 == x2*y1
        puts "Yes"
        exit
      end
    end
  end
end
puts "No"