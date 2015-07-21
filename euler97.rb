N = 7830457

def last(n)
  if n > 1000
    a = n/2
    b = n-a
    return (last(a)* last(b)) % (10**10)
  end

  return 2**n % 10**10 

end

p s = (last(N) * 28433 + 1) % (10**10)

p (28433* 2**N + 1)% 10**10