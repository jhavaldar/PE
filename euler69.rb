require '/Users/jhavaldar/Desktop/Jay/Programming/Project Euler/primes.rb'
$primes = Primes.primes_less_than(1000000)

def phi(n)
  factors = Array.new
  # Find the prime factorization
  if $primes.include? n
    return n-1
  end

  i = 0

  temp = n 

  while n!=1

    if n % $primes[i] == 0
      factors.push($primes[i])

      while n % $primes[i] == 0
        n /= $primes[i]
      end
    end

    i += 1

  end

  prod = temp 

  for p in factors
    prod *= (1-1.0/p)
  end

  return prod
end

max = 0
n = -1

for i in 2..1000000
  d = i/phi(i)
  if d > max 
    max = d
    n = i
  end
end

p n

