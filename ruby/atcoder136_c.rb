n = gets.to_i
h = gets.split.map &:to_i
ans = 'Yes'
(n-1).downto(1){|i|
  if h[i-1] > h[i]
    if h[i-1]-h[i] == 1
      h[i-1] -= 1
    else
      ans = "No"
    end
  end
  }
puts ans

