@@c = 0
def func(n, s)
  return if n<s
  t = [0]*10
  s.to_s.chars.each do |x|
    t[x.to_i] += 1
  end
  @@c += 1 if t[3]>0&&t[5]>0&&t[7]>0
  a = [3, 5, 7]
  func(n, s*10+a[0])
  func(n, s*10+a[1])
  func(n, s*10+a[2])
end
n = gets.to_i
(puts 0; exit) if n<357
s = 0
func(n, s)
puts @@c