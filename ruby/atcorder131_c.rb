#cでもdでも割り切れない数 
#	= 全体 - cで割り切れる数 - dで割り切れる数 + cとdの共通集合で割り切れる数
#cとdの共通集合 = 最小公倍数(LCM) -> ※メソッドあり
#LCMはGCDより求められる -> ※メソッドあり
a, b, c, d = gets.split(" ").map(&:to_i)
def gcd(c, d)
	return d==0 ? c : gcd(d, c%d)
end
def lcm(c, d)
	return c/gcd(c, d) * d
end
def func(x, c, d)
	return ret = x - x/c - x/d + x/lcm(c, d)
end
ans = func(b, c, d) - func(a-1, c, d)
puts ans
