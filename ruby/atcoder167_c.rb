n, m, x = gets.split(" ").map &:to_i
a = readlines.map{|i| i.split(' ').map(&:to_i)}
#a.sort_by {|x| x[0]}
ans = -1
aa = Array.new(m+1, 0)
#bit全探索
(1 << n).times{ |is|
  min = -1
  aa.fill(0)
  n.times{ |i|
    if(is>>i&1 == 1)
      count = 0
      (m+1).times{ |j|
        aa[j] += a[i][j]
        if aa[j] >= x && j > 0
          count += 1
        else 
          count = 0
        end
      }
      if count == m
        min = aa[0]
        if ans > min || ans == -1
          ans = min
        end
        break		#最小の組み合わせなのでBreak
      end
    else
      next
    end
  }
}
puts ans
