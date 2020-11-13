inf = 99
h, w = gets.split.map &:to_i
sy, sx = gets.split.map &:to_i
sx -= 1; sy -= 1
gy, gx = gets.split.map &:to_i
gx -= 1; gy -= 1
m = readlines.map{|i| i.split('').map(&:chomp)}
dx = [0, 1, 0, -1]
dy = [1, 0, -1, 0]
d = Array.new(h){Array.new(w, inf)}
d[sy][sx] = 0
#queueを用いる: shift / push
qx = []
qy = []
qx.push(sx); qy.push(sy)
while qx.empty? == false
  x = qx.shift
  y = qy.shift
  if x==gx && y==gy
    break
  end
  for i in 0..3
    nx = x + dx[i]
    ny = y + dy[i]
    if m[ny][nx]=="." && d[ny][nx]==inf
      d[ny][nx] = d[y][x] + 1
      qx.push(nx); qy.push(ny)
    end
  end
end
p d[gy][gx]