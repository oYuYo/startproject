_, *a = `dd`.split.map &:to_i
a = [0, a, 0].flatten
flg = true
ans = 0
while flg
  s = e = -1
  a.size.times do |i|
    if a[i]>0 && s==-1
      s = i
    elsif a[i]==0 && s>-1 && e==-1
      e = i
    end
    a[i] -= 1 if s>-1 && e==-1
  end
  ans += 1 if s<e
  flg = false if a.sum == 0
end
puts ans