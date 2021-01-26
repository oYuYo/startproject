n, *x = $<.read.split.map &:to_i
m = n/2
y = x.sort
n.times{|i| p x[i]<y[m]? y[m] : y[m-1]}