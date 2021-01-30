n, m = gets.split.map &:to_i
a = []
ans = 0
m.times do
  a.push(gets.split.map(&:to_i))
end
k = gets.to_i
c = []
k.times do
  c.push(gets.split.map(&:to_i))
end
(1<<k).times do |i|
  ds = [0]*n
  k.times do |j|
    if i>>j&1==1
      ds[c[j][0]-1] += 1
    else
      ds[c[j][1]-1] += 1
    end
  end
  max = 0
  m.times do |i|
    if ds[a[i][0]-1]>0 && ds[a[i][1]-1]>0
      max += 1
    end
    ans = [ans, max].max
  end
end
puts ans
