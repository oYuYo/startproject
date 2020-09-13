n = gets.chomp.to_i
s = gets.split.map(&:to_i)
s = s.sort
#p s
ans = 0
n.times{ |i|
	0.upto(i){ |j|
		0.upto(j){ |k|
		if s[i]!=s[j] && s[j]!=s[k] && (s[j]+s[k])>s[i]
			ans += 1
		end
		}
	}
}
puts ans


