min = 2*10**6
minarea = 0

for i in 1..2000
  w = (i*(i+1))/2
  j = 2000
  h = (j*(j+1))/2
  while w*h > 8*10**5
    if (w*h - 2*10**6).abs < min 
      min = (w*h - 2*10**6).abs
      minarea = i*j
    end
    j-=1
    h = (j*(j+1))/2
  end
end

p minarea

# Answer: 2772
p 2000(2001)