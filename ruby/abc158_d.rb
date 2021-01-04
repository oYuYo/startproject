s = gets.chomp.split("")
q = gets.to_i
flg = 0
q.times do
  t = gets.chomp.split(" ")
  if t.size == 1
    flg ^= 1
  else
    if t[1].to_i == 1
      s.unshift(t[2]) if flg == 0
      s.push(t[2]) if flg == 1
    else
      s.push(t[2]) if flg == 0
      s.unshift(t[2]) if flg == 1
    end
  end
end
s.reverse! if flg == 1
puts s.join