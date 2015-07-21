def is_prime(n)
  for i in 2..Math.sqrt(n)
    if n%i == 0
      return false
    end
  end
  return true
end

def is_sqrt(n)
  r = Math.sqrt(n).to_i
  return r*r==n
end

def is_goldbach(n)
  i = 1
  a = 2*(i**2)

  while a < n 
    if is_prime(n-a)
      return true
    end
    i += 1 
    a = 2*(i**2)
  end
  return false
end

i = 1
flag = false

while !flag
  n = 2*i + 1
  if !is_prime(n) && !is_goldbach(n)
    flag = true
    p "n = #{n}"
  end
  i += 1
end
