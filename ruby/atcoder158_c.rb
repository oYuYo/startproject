a, b = gets.split(" ").map(&:to_i)
as = (a/0.08).ceil
ae = ((a+1)/0.08).ceil - 1
bs = (b/0.1).ceil
be = ((b+1)/0.1).ceil - 1
if as >= bs && as <= be
  puts as
elsif as <= bs && ae >= bs
  puts bs
else
  puts -1
end