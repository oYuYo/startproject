#check distance from room1 to each room
#it can check shortest route from room1 by using BFS.
n, m = gets.split.map &:to_i
g = Array.new(n){[]}
m.times do
  a, b = gets.split.map &:to_i
  g[a-1] << b-1
  g[b-1] << a-1
end
d = [-1]*n
d[0] = 0
q = [0]
while !q.empty?
  x = q.shift
  g[x].each do |i|  #room linked from start room
    next if d[i] != -1
    d[i] = x + 1    #score
    q.push(i)       #push linked room
  end
end
(puts "No"; exit) if d.include?(-1)
puts "Yes"
puts d[1..-1]