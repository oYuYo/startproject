n, k = gets.split.map(&:to_i)
t = Array.new
n.times{ |i|
  t.push(gets.split.map(&:to_i))
  }
a = []
a = (1..n).to_a
ans = sum = 0
a.permutation(n).each{ |i|
  break if i[0] != 1
  sum = 0
  (i.size-1).times{ |j|
    x = i[j] - 1
    y = i[j+1] - 1      
    sum += t[x][y]
    }
  sum += t[i[i.size-1]-1][0]
  #puts "sum = #{sum}"
  if sum == k
    ans += 1
  end
}
puts ans