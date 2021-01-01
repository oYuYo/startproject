n, y = gets.split.map &:to_i
a = y/10000
while a>=0
  b = (y-10000*a)/5000
  while b>=0
    c = ((y-a*10000)-b*5000)/1000
    if a+b+c==n && a*10000+b*5000+c*1000==y
      puts "#{a} #{b} #{c}"
      exit
    end
    b -= 1
  end
  a -= 1
end
puts "-1 -1 -1"