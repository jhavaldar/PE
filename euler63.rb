def npower(n)
  i = 1
  sum = 0
  while (i**n).to_s.length <= n
    if (i**n).to_s.length == n
      sum += 1
    end
    i += 1
  end
  return sum
end


sum = 0 

for i in 1..22
  sum += npower(i)
end

p sum