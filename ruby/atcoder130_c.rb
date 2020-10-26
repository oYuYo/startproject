w, h, x, y = gets.split.map &:to_f
if x*2 == w && y*2 == h
  ans = 1
else
  ans = 0  
end
puts "#{(w*h)/2.0} #{ans}"