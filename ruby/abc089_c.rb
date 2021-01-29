h = {"M"=>0, "A"=>1, "R"=>2, "C"=>3, "H"=>4}
a = [0]*h.size
n = gets.to_i
n.times do
  s = gets[0]
  a[h[s]] += 1 if h.include?(s)
end
a = a.select{|x| x>0}
ans = 0
a.combination(3) do |ai,aj,ak|
  ans += ai*aj*ak
end
p ans