def is_divisible(str)
  primes = [2, 3, 5, 7, 11, 13, 17]
  for i in 0..6
    if str[i+1, 3].to_i % primes[i] != 0
      return false
    end
  end
  return true
end

s = (0..9).to_a.permutation.to_a

sum = 0

for i in s 
  n = i.inject("") {|acc, x| acc += x.to_s }
  if is_divisible(n) && n >= "1000000000"
    sum += n.to_i
  end
end

p sum