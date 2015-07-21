def period(s)
  a0 = Math.sqrt(s).to_i

  m = 0
  d = 1
  a = a0
  i = 0

  while a != 2*a0
    i += 1
    m = d*a - m 
    d = (s - m**2)/d 
    a = ((a0 + m)/(d)).to_i
  end

  return i

end


def is_square(n)
  r = Math.sqrt(n).round
  return r*r == n
end

sum = 0

for n in 1..10000
  if !is_square(n) 
    if period(n) % 2 == 1
      sum += 1
    end
  end
end

p sum
