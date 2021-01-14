# (a+b)%k=0, (b+c)%k=0, (c+a)%k=0 => a%k=b%k=c%k
# if a%k=b%k=0 or k/2 then (a+b)%k=0
# therefore count num of (1..n)%k=0. 
#but if k is even, count num of condition of a%k==k/2
n, k = gets.split.map &:to_i
ans = 0
(1..n).each do |x|
  ans += 1 if x%k==0
end
ans **= 3
if k.even?
  c = 0
  (1..n).each do |x|
    c += 1 if x%k==k/2
  end
  ans += c**3
end
puts ans