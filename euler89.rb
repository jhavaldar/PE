fname = "p089_roman.txt"
file = File.open(fname, "r")
contents = file.read.split("\n")
file.close

def arabic_to_roman(n)
  str = ""
  while n >= 1000
    str += "M"
    n -= 1000
  end
  while n >= 900
    str += "CM"
    n -= 900
  end
  while n >= 500
    str += "D"
    n -= 500
  end
  while n >= 400
    str += "CD"
    n-= 400
  end
  while n >= 100
    str += "C"
    n -= 100
  end
  while n >= 90
    str += "XC"
    n -= 90
  end
  while n >= 50
    str += "L"
    n -= 50
  end
  while n >= 40
    str += "XL"
    n -= 40
  end
  while n >= 10
    str += "X"
    n -= 10
  end
  while n >= 9
    str += "IX"
    n -= 9
  end
  while n >= 5
    str += "V"
    n -= 5
  end
  while n >= 4
    str += "IV"
    n -= 4
  end
  while n > 0
    str += "I"
    n -= 1
  end
  return str
end

def roman_to_arabic(num)
  sum = 0
  #Go backwards
  i = num.length - 1

while i >= 0
    case num[i]
    when "I"
      sum += 1
      i -= 1
    when "V"
      if i > 0 && num[i-1] == "I"
        sum += 4
        i -= 2
      else
        sum += 5
        i -= 1
      end
    when "X"
      if i > 0 && num[i-1] == "I"
        sum += 9
        i -= 2
      else
        sum += 10
        i -= 1
      end
    when "L"
      if i > 0 && num[i-1] == "X"
        sum += 40
        i -= 2
      else
        sum += 50
        i -= 1
      end
    when "C"
      if i > 0 && num[i-1] == "X"
        sum += 90
        i -= 2
      else
        sum += 100
        i -= 1
      end
    when "D"
      if i > 0 && num[i-1] == "C"
        sum += 400
        i -= 2
      else
        sum += 500
        i -= 1
      end
    when "M"
      if i > 0 && num[i-1] == "C"
        sum += 900
        i -= 2
      else
        sum += 1000
        i -= 1
      end
    else
      p "ERROR"
    end
  end
  return sum
end

sum = 0 

for num in contents
  sum += (num.length - arabic_to_roman(roman_to_arabic(num)).length)
end

p sum
