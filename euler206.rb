def right_conditions(n)
  str = n.to_s
  i = 0
  counter = 1
  while counter < 10
    if str[i] != counter.to_s
      return false
    end
    i += 2
    counter += 1
  end
  return str[18]=='0'
end

lower = 105892123
upper = 138902662

count = 0
j = lower
=begin
while j < upper
  if(right_conditions(j**2*100))
    p j
  end
  if (count % 2 == 0)
    j += 4
  else
    j += 6
  end
  count += 1
end
=end

p 1389019170**2