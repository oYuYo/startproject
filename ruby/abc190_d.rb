#sum of arithmetic progression is equal to trapezoidal area => l(s+s+l-1)/2
#=> 2n = l(2s+l-1) => 2n/l-l = 2s-1
#check odd combo of 2n/l-l, and also l is a divisor of 2n.
n = gets.to_i * 2
ans = 0
(1..(n**0.5).to_i).each do |x|
  ans += 1 if n%x==0 && (n/x-x).odd?
end
puts ans*2