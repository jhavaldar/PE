def longdivision(denom)
  arr = []

  num = 1

  i = 0 

  #string = ""

  while num != 0 

    i += 1

    if num < denom
      num *= 10
    end

    while num < denom
      num *= 10
      arr.push(0)
      #string += "0"
      i += 1
    end

    #p num

    if arr.include? num
      #p string
      return i - arr.find_index(num) - 1
    end

    arr.push(num)

    #string += "#{num/denom}"

    num -= denom*(num / denom)

  end

  return i

end

max = 0 
n = 0

for d in 1...1000
  temp = longdivision(d)

  if temp > max
    n = d 
    max = temp
  end

end


p n