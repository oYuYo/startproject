def fn(n)
    if (n == 0) return 0
    if (n == 1 || n == 2) return 1
    return fn(n-1) + fn(n-2)
end
puts "n = #{fn(10)}"