require 'set'

perms = (1..9).to_a.permutation(9).to_a

s = Set.new


for seq in perms
  a = seq[0,1].map{|x| x.to_s}.inject(:+).to_i
  b = seq[1,4].map{|x| x.to_s}.inject(:+).to_i
  c = seq[5,4].map{|x| x.to_s}.inject(:+).to_i
  if a*b == c
    p "#{a} #{b} #{c}"
    s.add(c)
  end
end


for seq in perms
  a = seq[0,2].map{|x| x.to_s}.inject(:+).to_i
  b = seq[2,3].map{|x| x.to_s}.inject(:+).to_i
  c = seq[5,4].map{|x| x.to_s}.inject(:+).to_i
  if a*b == c
    p "#{a} #{b} #{c}"
    s.add(c)
  end
end


p s.inject(:+)