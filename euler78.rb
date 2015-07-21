# How many ways to separate n balls into k piles?

def piles(n, k, max)

  sum = 0

  # Base case

  if n < k || max < 1
    return 0
  end

  if n == k
    return 1
  end

  i = 0

  while n >= max*i
    sum += piles(n-max*i, k-i, max-1)
    i += 1
  end

  return sum

end

def total_piles(n)
  sum = 0
  for k in 1..n 
    sum += piles(n, k, n)
  end
  return sum
end

#p total_piles(500)

=begin

i = 1
while true 
  if total_piles(i) % 1000000 == 0
    p i 
    break
  end
  i += 1
end

=end

