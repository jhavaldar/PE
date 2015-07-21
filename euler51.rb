require '/Users/jhavaldar/Desktop/Jay/Programming/Project Euler/primes.rb'

max_primes = 10**6
$primes = Primes.primes_less_than(max_primes)

def is_prime(n)
  for i in 2..Math.sqrt(n)
    if n%i == 0
      return false
    end
  end
  return true
end

def is_eight(n)

  subs = []

  for l in 4...n.length
    subs += (0...n.length).to_a.combination(l).to_a
  end

  for set in subs

    sum = 0

    for k in 0..2

      str = ""

      for i in 0...n.length
        str[i] = n.to_s[i]
      end

      for j in set
        str[j] = k.to_s
      end

      if is_prime(str.to_i)
        if str[0] != "0"
           sum += 1
        end
      end

    end

    if sum == 8
      return true
    end

  end

  return false

end


i = 0
flag = false

while !flag 

  if is_eight($primes[i].to_s)
    p "#{$primes[i]}"
    flag = true 
  end

  i += 1
end


