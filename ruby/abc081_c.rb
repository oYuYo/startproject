_, k, *a = $<.read.split.map &:to_i
b = [0]*(a.max+1)
a.each{|x| b[x] += 1}
b = b.select{|x| x>0}.sort
puts b.size > k ? (b.pop(k); b.sum) : 0