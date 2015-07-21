def is_cube(n)
  r = (n**(1.0/3.0)).round
  return r*r*r == n
end

def three_perms(num_perms, n)
  set = n.to_s.scan(/./).permutation.to_a

  sum = 0

  valid_perms = []

  for num in set
    a = num.join("").to_i
    if a.to_s.length == n.to_s.length
      if is_cube(a)
        if !valid_perms.include?(a)
          valid_perms.push(a)
          sum += 1
        end
      end
    end
  end

  if sum == num_perms
    return true
  else
    return false
  end

end

i = 1
flag = false

=begin
while !flag
  if three_perms(5, i**3)
    flag = true
    p "n = #{i**3}"
  end
  i += 1
end
=end
