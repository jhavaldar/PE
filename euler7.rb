=begin

First, we must create an upper bound for the 10001st prime.

I created this function to test how many primes are less than n

=end

def primes_less_than (n)

	nums = Array.new(n)

	count = 0

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
			count+=1
			if count == 10001
				puts "THE 1001st prime is: " + i.to_s
			end
		end
	end

	return count

end

puts primes_less_than(10**5+10**4)

# So far, there are ~9,500 primes less than 10^5. So definitely we're close.

# And there are ~78,000 primes less than 10^6. So we are close to 10,000.

# Now to build a slightly modified function

# DONE: 104743