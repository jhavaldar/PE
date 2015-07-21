def b(n)

  if n == 0
    return 2
  end

  case (n % 3)
  when 0 
    return 1
  when 1
    return 1
  when 2
    return 2*((n+1)/3)
  end

end


def conv(i)
  a0 = 2
  a1 = 3

  n = 2

  while n < i

    x = (b(n))*a1 + a0
    a0 = a1 
    a1 = x 

    n += 1
    
  end

  return a1
end

def digit_sum(n)
  return n.to_s.scan(/./).inject(0) {|acc, x| acc + x.to_i}
end

p digit_sum(conv(100))

