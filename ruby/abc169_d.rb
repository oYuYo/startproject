require 'prime'
n = gets.to_i
fc = Prime.prime_division(n)
ans = 0
arr = []
fc.each do |i, j|
  e = 1
  while e <= j
    arr.push(i**e)
    j -= e
    e += 1
  end
end
p arr.size