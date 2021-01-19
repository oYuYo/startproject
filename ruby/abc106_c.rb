s = gets.chomp
k = gets.to_i
s.chars.each do |t|
  (puts t; exit) if t!='1' || k==1
  k -= 1  
end  