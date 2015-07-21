require '/Users/jhavaldar/Desktop/Jay/Programming/Project Euler/primes.rb'

$primes = Primes.primes_less_than(10**6)

def is_prime(n)
  for i in 2..Math.sqrt(n)
    if n%i == 0
      return false
    end
  end
  return true
end


i = 0
max_len = 0

max = 0

n = 10**6

while $primes[i] < n && i < $primes.length - 1

  sum = $primes[i]
  j = i + 1

  while sum < n 
    sum += $primes[j]

    if (j - i + 1) > max_len && is_prime(sum)
      max_len = j - i + 1
      max = sum 
    end

    j += 1

  end

  i += 1

end

p max
p is_prime(max)
