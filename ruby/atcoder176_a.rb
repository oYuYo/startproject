n, x, t = gets.chomp.split(" ").map(&:to_i)
if (n % x == 0)
	ans = t * (n/x)
elsif(n < x)
	ans = t
else
	ans =  t*(n/x +1)
end
puts ans