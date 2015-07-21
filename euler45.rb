
def int_sol(a, b, n)
  c = -n

  disc = b*b - 4*a*c

  if disc < 0 
    return false
  end

  x1 = (-b + Math.sqrt(disc))/(2*a)

  if x1 - x1.to_i < 10**-10 && x1 > 0
    return true 
  end

  x2 = (-b - Math.sqrt(disc))/(2*a)

  if x2 - x2.to_i < 10**-10 && x2 > 0
    return true 
  end

  return false
end

def is_pentagonal(n)
  int_sol(1.5, -0.5, n)
end

def is_hexagonal(n)
  int_sol(2.0, -1.0, n)
end

n = 286
flag = false

while !flag
  tri = n*(n+1)/2.0
  if is_pentagonal(tri) && is_hexagonal(tri)
    flag = true 
    p "T#{n} - #{tri.to_i}"
  end
  n += 1
end


