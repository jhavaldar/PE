def choose (n,k)
  fact(n) / (fact(k) * fact(n-k))
end

def fact(n)
  (1..n).reduce(:*) || 1
end

def exceeds(n,val)

  i = n/2 
  sum = 0

  while (choose(n,i) >= val)
    sum+=1
    i-=1
  end

  if sum == 0
    return 0
  end

  if n%2 == 0 
    return 2*sum-1
  else
    return 2*sum
  end

end

p (1..100).map{|num| exceeds(num, 10**6)}.reduce(:+)