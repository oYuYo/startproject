a, b, w = gets.split.map &:to_i
w *= 1000
max = 0
min = 10**7
for i in 1..10**6
  if i*a<=w && w<=i*b	#A円以上B円以下の時のMax/Min
    max = [max, i].max
    min = [min, i].min
  end
end
puts max==0 ? "UNSATISFIABLE" : "#{min} #{max}"