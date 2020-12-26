n = gets.to_i
m = n ** 0.3
for i in 0..m
  for j in 0..m
    if (i**5 - j**5) == n
      puts "#{i} #{j}"
      exit
    elsif (i**5 + j**5) == n
      puts "#{i} #{-j}"
      exit
    end
  end
end
