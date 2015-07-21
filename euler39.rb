
def num_triangles(p)
  num = 0
  c = p - 2
  while c > p / 3
    a = 1
    while a < (p - c) / 2
      b = p - a - c
      if a**2 + b**2 == c**2
        num = num + 1
      end
      a = a + 1
    end
    c = c - 1
  end
  return num
end

max = 0 
max_num = 1

for n in 1..1000
  k = num_triangles n 
  if k > max 
    max = k
    max_num = n
  end
end

p max_num
