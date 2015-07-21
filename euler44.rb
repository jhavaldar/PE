A = 1.5
B = -0.5

def is_pentagonal(k)
  c = -k
  d = B**2 - 4*A*c

  if d <= 0 
    return false
  end

  x1 = (-B + Math.sqrt(d))/(2*A)
  x2 = (-B + Math.sqrt(d))/(2*A)

  return x1.to_i==x1 || x2.to_i==x2
end


i = 1 
min = 0

notFound = true

while notFound

  top = i*(3*i-1)/2

  j = i - 1

  while j > 0
    bottom = j*(3*j-1)/2
 
    d = top - bottom 

    if is_pentagonal(top+bottom) && is_pentagonal(top-bottom)
      min = d 
      notFound = false
      break
    end

    j -= 1
  end

  i += 1
end

p d
