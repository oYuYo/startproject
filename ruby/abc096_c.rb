h, w = gets.split.map &:to_i
a = []
a.unshift(["."] * (w+2))
h.times{ a << ["."] + gets.chomp.split("") + ["."] }
a.push(["."] * (w+2))
ans = "Yes"
h.times do |i|
  w.times do |j|
    x = i+1
    y = j+1
    if a[x][y]=="#"
      ans = "No" if a[x-1][y]=="." && a[x+1][y]=="." && a[x][y-1]=="." && a[x][y+1]=="."
    end
  end
end
puts ans