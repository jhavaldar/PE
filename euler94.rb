def almost_integral(x)
  n = (1.5*x + 0.5)*(0.5*x + 0.5)*(0.5*x + 0.5)*(0.5*x - 0.5)
  return is_square(n)
end

def is_square(n)
  r = Math.sqrt(n).to_i
  return r*r==n
end

# Stipulation: 3x + 1 < 1 million

x = 2
sum = 0

while x < (10**3-1)/3
  if almost_integral(x)
    p x
  end
  x += 1
end

p sum