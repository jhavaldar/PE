
=begin
	
	First, we start at sqrt(n). We find the closest odd number and start decrementing by two.

	If the number is prime, check if it divides.

	
=end

# The sieve method. Used to find the primes bounded by the number.

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

		while j < n/2 && !nums[j-1] do
			j+=1
		end

		seed = j

	end

	for i in 1..n
		if nums[i-1]
			primes.push(i)
		end
	end

	return primes

end

def largest_prime_factor (n)

	if n < 2
		puts "Error - invalid input"
		return
	end

	# All the primes that are less than or equal to n
	primes = primes(Math.sqrt(n).floor)


	i = primes.size

	while i > 1

		if n%primes[i-1] == 0 
			return primes[i-1]
		end

		i-=1
	end

end


puts largest_prime_factor(600851475143)


