n, m = gets.split(" ").map &:to_i
a = Array.new(n, -1)
m.times{
    s, c = gets.split(" ").map &:to_i
    if a[s-1] != -1 && a[s-1] != c
        puts -1
        exit
    else
        a[s-1] = c
    end
}
if a[0] == 0 && n > 1
    puts -1
    exit
end
a.length.times{ |i|
  a[i] = 0 if a[i] == -1
}
if a[0] == 0 && n > 1
    a[0] = 1
end
puts a.join