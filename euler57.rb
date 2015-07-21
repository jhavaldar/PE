a = 3
b = 2
i = 1
sum = 0

while i <= 1000

  if a.to_s.length > b.to_s.length 
    sum += 1
  end

  c = a + 2*b 
  b = a + b
  a = c
  i += 1

end

p sum