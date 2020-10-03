n = gets.to_i
h = Hash.new(0)
n.times{
  s = gets.chomp
  h[s] += 1
}
max = h.values.max
h = h.select{|k,v| v == max}.sort
h.map{|k,v| puts k}