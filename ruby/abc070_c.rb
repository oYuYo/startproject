_, *a = $<.read.split.map &:to_i
p a.inject(:lcm)