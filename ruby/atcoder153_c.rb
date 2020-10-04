n, k = gets.split(" ").map &:to_i
h = gets.split(" ").map(&:to_i).sort.reverse
puts n <= k ? 0 : h[k..h.size-1].sum
