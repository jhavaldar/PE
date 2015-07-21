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

$primes = primes(10000)

def d(n)

	prod = 1

	$primes.each do |num|

		if num <= n
			sum = 0

			totalnum = n

			count = 0

			while totalnum%num==0 do
				totalnum = totalnum / num
				count+=1
			end

			prod *= (0..count).inject(0) {|sum, n| sum+num**n}
		end

	end

	return prod-n
end

def amicable_sum(n) 

	sum = 0

	sums = Hash.new

	for i in 1..n
		sums[i] = d(i)
	end

	for i in 1..n
		if sums.has_key?(d(i)) && sums[d(i)] == i && d(i) != i
			sum+=i+d(i)
		end
	end

	return sum/2
end


puts amicable_sum(10000)

