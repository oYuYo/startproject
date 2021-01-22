n, k, *a = $<.read.split.map &:to_i
a.unshift 0
b = [0]*(a.max+1)
t = 1
f = 0
while k>0
  t = a[t]
  b[t] += 1
  k -= 1
  if b[t]==3 && f==0
    f = 1
    c = b.select{|bi| bi>1}
    k %= c.size
  end
end
puts t