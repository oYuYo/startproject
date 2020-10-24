m = 2019
l, r = gets.split.map &:to_i
min = m
l.upto(r-1){ |i|
  (i+1).upto(r){ |j|
    min = (i*j)%m if min>(i*j)%m
    if m == 0
      puts min
      exit
    end
    }
  }
puts min