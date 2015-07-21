def pandigital_product(num)
  str = ""
  i = 1
  while str.length < 9
    str += (num*i).to_s
    i += 1
  end
  return str
end

def is_pandigital(n)
  if n.length != 9
    return false
  end
  for i in 1...9 
    if !n.include? i.to_s
      return false
    end
  end
  return true
end

max = 0

for i in 1..10**5
  n = pandigital_product(i).to_i
  if is_pandigital(pandigital_product(i))
    if n > max 
      max = n
    end
  end
end

p max