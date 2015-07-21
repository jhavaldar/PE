require '/Users/jhavaldar/Desktop/Jay/Programming/Project Euler/primes.rb'

$primes_max = 10000000
$primes = Primes::primes_less_than $primes_max
$bound = 0

def is_prime (n, imin, imax)

  if n >= $primes.last
    $primes_max = n*2
    $primes = Primes::primes_append_until($primes_max, $primes)
    imax = $primes.size - 1
  end

  if imax > $primes.size - 1
    imax = $primes.size - 1
  end

  while imax >= imin
    imid = (imin + imax) / 2
    if $primes[imid] == n 
      $bound = imid
      return true 
    elsif $primes[imid] < n 
      imin = imid + 1
    else
      imax = imid - 1
    end
  end

  $bound = imin - 1
  return false
end

num_primes = 0.0
total = 1
n = 0


loop do 
  total += 4
  n += 1

  if is_prime(4*n**2 - 2*n + 1, $bound, $primes.size - 1)
    num_primes += 1
  end

  if is_prime(4*n**2 + 1, $bound, $primes.size - 1)
    num_primes += 1
  end
  
  if is_prime(4*n**2 + 2*n + 1, $bound, $primes.size - 1)
    num_primes += 1
  end
  p num_primes/total
  break if num_primes/total < 0.10
end

p 2*n + 1

# Answer: 26241