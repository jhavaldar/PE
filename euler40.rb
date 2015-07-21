def d(n)

  place = 9
  i = 1

  while n >= place*i
    n -= place*i
    place *= 10
    i += 1
  end

  n -= 1

  number = n/i + 10**(i-1)
  digit = n % i 

  return digit_of(digit, number)
end

def digit_of(digit, number) 
  return number.to_s[digit].to_i
end


n = (0..6).to_a.inject(1) do |prod, i|
  prod *= d(10**i)
end

p n