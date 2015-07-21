def digital_sum(n)
  sum = 0
  while n!=0 
    sum += n%10
    n /= 10
  end
  sum
end

max = 0

for a in 2...100
  for b in 2...100
    if digital_sum(a**b) > max 
      max = digital_sum(a**b)
    end
  end
end

p max

# Answer: 972