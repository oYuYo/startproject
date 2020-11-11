n = gets.to_i
s = gets.chomp.split("")
rn = s.count("R")
if rn==n || rn==0
  puts 0
  exit
end
r = w = 0
n.times{ |i|
  if i < rn
    r += 1 if s[i] == "W"
  else
    w += 1 if s[i] == "R"
  end
  }
if r > w
  puts (r-w)+w
elsif r==w
  puts r
else
  puts (w-r)+r
end

