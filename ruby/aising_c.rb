n = gets.to_i
ans = []
sn = Math.sqrt(n).to_i
for x in 1..sn
  for y in 1..sn
    for z in 1..sn
      ans[x*x+y*y+z*z+x*y+y*z+z*x] ||= 0
      ans[x*x+y*y+z*z+x*y+y*z+z*x] += 1
    end
  end
end
n.times{ |i|
  if ans[i+1].nil?
    puts 0
  else
    puts ans[i+1]
  end
  }  