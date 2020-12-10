x = [100, 101, 102, 103, 104, 105]
arr = []
(1<<6).times{ |i|
  s = 0
  x.size.times{ |j|
    if (i>>j&1)==1
      s += x[j]
    end
    }
  arr.push(s)
  }
arr.shift
n = gets.to_f
arr.each do |a|
  if n%a == 0
    puts 1
    exit
  else
    b = n%a
    arr.each do |c|
      if b%c == 0
        puts 1
        exit 
      end
    end
  end
end
puts 0