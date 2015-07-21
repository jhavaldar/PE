# Returns all the primes up until n
def primes(n)
	nums = Array.new(n)

	primes = Array.new

	# 1 is not prime
	nums[0] = false

	# Creating the sieve, initially all true
	for i in 2..n
		nums[i-1] = true
	end

	seed = 2

	primes.push(2)
	
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
			primes.push(j)
		end

		seed = j

	end

	return primes
end

def is_prime(n, sieve)
	return sieve.include? n
end

def is_circular(n, sieve) 

	digits = n.to_s.size

	string = n.to_s + n.to_s

	for i in 0..digits
		if !is_prime(string[i, digits].to_i, sieve)
			return false
		end
	end

	return true

end

def circular_primes (n)

	sieve = primes(n)

	sieve.inject(0) { |count, num|
		if is_circular(num, sieve)
			count+1
		else
			count
		end
	}
end

puts circular_primes(1000000)

# ~ 80k primes to check for cirularity.