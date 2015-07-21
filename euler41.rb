def is_prime(n)
  for i in 2..Math.sqrt(n)
    if n%i == 0
      return false
    end
  end
  return true
end

s = (1..7).to_a.permutation.to_a

max = -1 

for i in s 
  n = i.inject("") {|acc, x| acc += x.to_s }.to_i
  if is_prime(n) && n > max 
    max = n
  end
end

p max