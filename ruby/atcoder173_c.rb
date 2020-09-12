i = gets.chomp.split(' ')
h = i[0].to_i
w = i[1].to_i
k = i[2].to_i
temp = ans = 0
s = readlines.map{|line| line.chomp.split('')}
#bit全探索
# 1:赤色に塗る = 削除とする
(1<<h).times{ |is|					#2行の場合Yes/Noで4パターン
	(1<<w).times{ |js|				#3列の場合Yes/Noで8パターン
		temp = 0;
		h.times{ |i|
			w.times{ |j|
				if(is>>i&1 == 1)	#削除した行はカウントしない
					next
				end
				if(js>>j&1 == 1)	#削除した列はカウントしない
					next
				end
				if(s[i][j] == '#')
					temp += 1
				end
			}
		}
		if(temp == k)
			ans += 1
		end
	}
}
puts ans
