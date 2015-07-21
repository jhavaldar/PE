p (1...10**4).map { |n|
  it = 0
  lych = 1
  while it < 50
    n += n.to_s.reverse.to_i
    if n.to_s == n.to_s.reverse
      lych = 0
    end
    it+=1
  end
  lych
}.reduce(:+)

# Answer: 249