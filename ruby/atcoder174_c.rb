k = gets.to_i
if(k%2==0) || (k%5==0)
	puts -1
	exit
end
a = 0
ans = 1
for i in 0..k-1	#鳩ノ巣原理により、k回もまわすと同じMod kをループするはず
	a = (a * 10 + 7) % k
	if(a == 0)
		puts ans
		exit
	end
	ans += 1
end
puts -1
