def period(s)
  b0 = Math.sqrt(s).to_i

  m = 0
  d = 1
  b = b0
  i = 0

  while b != 2*b0
    i += 1
    m = d*b - m 
    d = (s - m**2)/d 
    a = ((b0 + m)/(d)).to_i
  end

  return i

end

period(23)


def min_sol(d)
  # Find minimum convergent

def conv(i)

  m = 0
  d = 1
  a1 = 

  n = 2

  while n < i

    x = (b(n))*a1 + a0
    a0 = a1 
    a1 = x 

    n += 1
    
  end

  return a1
end

end