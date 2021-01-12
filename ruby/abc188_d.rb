n, c = gets.split.map &:to_i
arr = []
n.times do
  x, y, z = gets.split.map &:to_i
  arr.push([x-1, z])	#+z at day x
  arr.push([y, -z])		#-z at day y
end
arr.sort!				#sort by event
ans, t, f = 0, 0, 0
arr.each do |x, y|
  ans += (x-t) * [f, c].min 	#cal fee for period btwn pre & new
#  p [x, y, (x-t), ans, f, c]
  t = x					#update pre evt. date
  f += y				#current fee
end
p ans