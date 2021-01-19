#xor has rule as follows
#a = 1^2^3^...^n-2^n-1^n, b = 1^2^3^...^n-2
#a^b = n-1^n
#when given a and b, xorsum(b)^xorsum(a-1)
#xorsum repeats periodically shown as follows
#["0000000000", 0, 0]
#["0000000001", 1, 1]
#["0000000011", 3, 2]
#["0000000000", 0, 3]
#["0000000100", 4, 4]
#["0000000001", 1, 5]
#["0000000111", 7, 6]
#["0000000000", 0, 7]
#["0000001000", 8, 8]
#["0000000001", 1, 9]
def f n
  case n%4
  when 0
    n
  when 1
    1
  when 2
    n+1
  when 3
    0
  end
end
a, b = gets.split.map &:to_i
p f(a-1)^f(b)