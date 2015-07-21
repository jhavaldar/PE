=begin
	
Gonna use the sieve method again, and sum together the seeds instead of adding.
	
=end


def sum_primes(n)

	sum = 2

	nums = Array.new(n)

	# 1 is not prime
	nums[0] = false

	# Creating the sieve, initially all true
	for i in 2..n
		nums[i-1] = true
	end

	seed = 2
	
	while seed < n do
		
		factor = seed

		i = 2

		# This loop crosses out all of the factors of the seed
		while i*seed <= n do
			nums[i*seed - 1] = false
			i+=1
		end

		# This finds the next seed

		j = seed+1

		# Wait until you find a new prime.

		while j < n/2 && !nums[j-1] do
			j+=1
		end

		# If you found a new prime, add it to the pile
		if nums[j-1]
			sum+=j
		end

		seed = j

	end

	return sum
end

puts sum_primes(2000000)