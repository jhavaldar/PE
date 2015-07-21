require "bigdecimal"
require "bigdecimal/math"

p s = BigDecimal.new(2).sqrt(100).to_s

def digsum(a)

  count = 0 
  sum = 0
  i = 0

  while a[i] != '.'
    i+=1
  end

  i += 1

  while count < 100
    count += 1
    sum += a[i].to_i
    i+=1
  end

  return sum
end

nums = Array.new(100)

for j in 0...100
  nums[j] = true
end

for l in 1..10
  nums[l**2-1] = false
end
  
sum = 0

for m in 0...100
  if nums[m]
    s = BigDecimal.new(m+1).sqrt(100).to_s
    sum += digsum(s)
  end
end

p sum