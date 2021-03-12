def Rec(h, w)
    ans = h*w
    for i in 1...h
        sa = i*w
        sb = 0
        sc = 0
        2.times do |j|
            if j == 1
                sb = ((h-i)/2)*w
                sc = (h - i - (h-i)/2)*w
            else
                sb = (h-i)*(w/2)
                sc = (h-i)*(w-w/2)
            end
        ans = [ans, [sa, sb, sc].max - [sa, sb, sc].min].min
        end
    end
    ans
end
h, w = gets.split.map &:to_i
puts [Rec(h, w), Rec(w, h)].min