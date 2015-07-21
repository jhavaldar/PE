for i in 11..99
  ones = i%10
  for j in (ones*10+1)...(ones+1)*10
      left = i/10
      right = j%10
      if ((i+0.0)/j)==((left+0.0)/right) && i!=j
        p "#{i}/#{j}"
      end
  end
end

# Answer: 100