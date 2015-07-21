# Finds the length of the longest cycle

def division(a,b)
  seen = Hash.new
  i = 0

  while a!=0 && !seen.keys.include?(a) do
    
    a = a%b

    i+=1          # Add to the count
  end

  puts seen
  if a==0
    puts "#{i} steps"
  else
    puts "#{i-seen[a]} steps"
  end
 
end

division(1,70)