

def max_collatz_length(num)

	max_length = 1
	max_seed = 1

	cycles = Hash.new

	for n in 1..num

		seed = n

		# Whenever we encounter a cycle, we add it to the list.

		cycle_length = 1

		while n!=1 do

			if (cycles.has_key?(n))
				cycle_length += cycles[n]-1
				cycles[seed] = cycle_length
				n = 1

			else
				if n%2 == 0	
					n/=2
					cycle_length+=1
				else
					n = 3*n+1
					cycle_length+=1
				end

			end
		end

		cycles[seed] = cycle_length

		if cycle_length > max_length
			max_length = cycle_length
			max_seed = seed
		end
		#puts "n = " + seed.to_s + "\tcycle length = " + cycles[seed].to_s

	end

	return max_seed

end


puts max_collatz_length(1000000)

