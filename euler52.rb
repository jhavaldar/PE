def same_digits(a, b)
  a = a.to_s
  b = b.to_s
  if a.length != b.length
    return false
  end

  for i in 0...a.length
    if !b.include? a[i]
      return false
    end
  end

  return true
end

def p52(x)
  for i in 2..6
    if !same_digits(x, i*x)
      return false
    end
  end
  return true
end

flag = false
x = 10

while !flag 
  if (p52(x))
    flag = true
    p "#{x}"
  end
  x += 1
end