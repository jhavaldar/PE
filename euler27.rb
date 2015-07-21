require '/Users/jhavaldar/Desktop/Jay/Programming/Project Euler/primes.rb'

$prime_max = 1000

$sieve = Primes::sieve($prime_max)

def isprime(n)
  if n >= $prime_max
    $prime_max = [$prime_max*2, n].max
    $sieve = Primes::sieve($prime_max)
  end
  return $sieve.include? n
end

def primes(a,b)
  fn = Proc.new {|n| n**2 + a*n + b}

  n = 0

  while isprime(fn.call(n)) && fn.call(n) > 0
    n+=1
  end

  return n
end

max = 0
prod = 1

for a in (-999..999)
  for b in $sieve[1,336]
    if primes(a,b) > max 
      max = primes(a,b)
      prod = a*b
    end
  end
end

p prod
