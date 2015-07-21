def dig_square(n)
  sum = 0
  while n >= 10
    sum += (n - (n/10)*10)**2
    n /= 10
  end
  return sum + n**2
end


nums = Array.new(10**7+1)

for i in nums 
  i = false
end

nums[89] = true


for j in 1..10**7

  ct  = j

  while (ct != 1) && ! nums[ct]
    ct = dig_square(ct)
  end

  if ct != 1
    nums[j] = true
  end

end

sum = 0 

for j in nums
  if j
    sum += 1
  end
end

p sum



