require 'prime'
x = gets.to_i
if Prime.prime?(x)
  puts x
  exit
else
  x += 1 if x.even?
end
loop{
  if Prime.prime?(x)
    puts x
    exit
  end
  x += 2
}