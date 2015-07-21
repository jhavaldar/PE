# Returns all the primes up until n
# require '/Users/jhavaldar/Desktop/Jay/Programming/Project Euler/primes.rb'
module Primes

	def self.primes_less_than (n)
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

	def self.primes_append_until (n, primes)

		nums = Array.new(n+1,true)

		primes.each do |prime|
			factor = $primes.last/prime

			loop do 
				factor += 1
				break if prime*factor > n 
				nums[prime*factor] = false
			end
		end

		j = $primes.last + 1

		while j < n
			j+=1
			if nums[j]
				primes.push(j)
			end
		end

		return primes
	end

end
