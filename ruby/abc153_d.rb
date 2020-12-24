def attck(x)
  if x == 1
    return 1
  end
  return attck((x/2).floor)*2 + 1  
end
h = gets.to_i
puts attck(h)