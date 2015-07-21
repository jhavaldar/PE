require '/Users/jhavaldar/Desktop/Jay/Programming/Project Euler/primes.rb'

$primes_max = 10
$sieve = Primes::sieve($primes_max)

i = 4
count = 0

def isprime(n)
  if n >= $primes_max
    $primes_max = [n,2*$primes_max].max
    $sieve = Primes::sieve($primes_max)
  end
  $sieve.include? n
end

def truncatable(n)

  if !isprime(n)   # Check if itself is prime
    return false
  end

  n = n.to_s
  s = n

  while !n.empty? && !s.empty?
    if !isprime(n.to_i) || !isprime(s.to_i)
      return false
    end
    n = n.to_s[0,n.size-1]
    s = s.to_s[1..-1]
  end

  return true
end

sum = 0

while count < 11
  if i > $sieve.size - 1
    $primes_max = 2*$primes_max
    $sieve = Primes::sieve($primes_max)
  end

  if truncatable($sieve[i])
    puts $sieve[i]
    count+=1
    sum+=$sieve[i]
  end

  i+=1
end

p sum

# Answer: 748317

