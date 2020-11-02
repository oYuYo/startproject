#8の倍数判定
#1234696 = 1234 * 1000 + 696
#1000は8の倍数, 696は8の倍数
#下3桁が8の倍数かどうかに注目
s = gets.chomp.split("").map(&:to_i)
if s.size == 1 && s[0] == 8
  puts "Yes"
  exit
end
if s.size == 2
  a, b = s
#  p "#{a} #{b}"
  if (a*10+b)%8==0 || (ab*10+a)%8==0
    puts "Yes"
    exit
  end
end
if s.size > 2
  t = []
  112.step(999, 8){ |i|
    if i%8 == 0
      t = s.dup
      x = i%10
      y = (i/10)%10
      z = (i/100)
      if t.include?(x)
        t.delete_at(t.index(x))
        if t.include?(y)
          t.delete_at(t.index(y))
          if t.include?(z)
            puts "Yes"
            exit
          end
        end
      end
    end
    }
end
puts "No"