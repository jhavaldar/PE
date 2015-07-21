def six_cyclic(n)

  if n.length != 4
    return false
  end

  n = n.to_s
  i = 0

  while i < 6
    a = n[2,2]
    p a
    p n[0,2]
    a += n[0,2]
    n = a
    p a
    i += 1
  end

end

six_cyclic("8128")