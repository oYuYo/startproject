a, b = gets.split.map &:to_i
m = 1
for c in 1..b
    m = [m, c].max if (b/c-(a-1)/c) > 1	#how many multiples of c btwn a&b
end
puts m