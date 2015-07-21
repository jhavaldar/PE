require '/Users/jhavaldar/Desktop/Jay/Programming/Project Euler/primes.rb'



def num_prime_factors(n,primes)
	i = 0 
	count = 0

	while n > 1 && primes[i] <= n
		if n%primes[i] == 0
			count+=1
			while n%primes[i] == 0
				n/=primes[i]
			end
		end
		i+=1
	end

	return count
end

def n_consecutive(n)
	max = 10
	primes = Primes::sieve(max)

	i = 2
	flag = false

	while !flag do 

		if i == max 
			max*=2
			primes = Primes::sieve(max)
		end
		flag = true

		for j in (0..n-1)
			flag = flag && (num_prime_factors(i+j, primes) == n)
		end

		i+=1

	end

	return i-1
end


puts n_consecutive(4)
