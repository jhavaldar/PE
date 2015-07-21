def countsum(maxnum, minbuckets)
  if maxnum == 1 && minbuckets > 1
    return 0
  end
  sum = 0
  for i in 1..maxnum-minbuckets
    sum += countsum(maxnum-1, 0)
  end
  return sum
end

p countsum(5, 2)