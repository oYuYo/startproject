def kaibun(s, _s, _e)
  ret = true
  (_e - _s).times{ |i|
    if s[_s+i] != s[_e-i]
      return false
    end
    return ret if (_s+i) >= (_s+_e)/2
 }
end
s = gets.chomp
if kaibun(s, 0, s.length - 1) && kaibun(s, 0, (s.length - 1)/2 - 1) && kaibun(s, (s.length + 3)/2 - 1, s.length - 1)
  puts "Yes"
else
  puts "No"
end