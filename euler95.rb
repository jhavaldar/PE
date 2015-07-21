require '/Users/jhavaldar/Desktop/Jay/Programming/Project Euler/primes.rb'

$primes = Primes.primes_less_than(10**6)
$nums = Array.new(10**6)
for n in $nums
  n = false
end

def divisor_sum(n)
  p upper = Math.sqrt(n)
  i = 0
  prod = 1
  while n > 1 && $primes[i] < upper
    p = $primes[i]
    e = 0
    if n % p == 0
      while n % p == 0
        n /= p
        e += 1
      end
      prod *= ((p**(e+1)-1)/(p-1))
    end
    i += 1
  end
  return prod
end

def aliquot_sum(n)
  return divisor_sum(n)-n
end

max_length = 0
max_num = 0

for i in 2...10**1
  seed = i
  l = 0
  while seed!= 1 && !$nums[seed]
    $nums[seed] = true
    seed = aliquot_sum(seed)
    l += 1
    if (l > max_length)
      max_num = seed
    end
  end
end

p max_num