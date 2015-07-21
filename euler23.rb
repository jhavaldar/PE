require '/Users/jhavaldar/Desktop/Jay/Programming/Project Euler/primes.rb'

$primes = Primes::sieve((28123/2))

def abundant(n)
	init = n
	i = 0
	pdivs = Hash.new

	while i < $primes.size - 1 && n!=1
		if n % $primes[i] == 0
			factor = 0
			while n % $primes[i] == 0
				factor+=1
				n/=$primes[i]
			end
			pdivs[$primes[i]] = factor
		end
		i+=1
	end
	sum = pdivs.keys.map{|key| (0..pdivs[key]).map{|num| key**num}.reduce(:+)}.reduce(:*) || 1
return sum > 2*init
end

lim = 28123

# Calculate the abundant numbers

for i in 2..lim
	if abundant(i)
		(abundants||=[]) << i
	end
end


# Create an array from 1 to 28123
nums = Array.new(lim+1,false)


# Sum for all abundant numbers
for j in 0...abundants.size

	k = j

	while k < abundants.size
		sum = abundants[j] + abundants[k]
		break if sum > lim
		nums[sum] = true
		k += 1
	end

end

p nums.map.with_index {|x,i| if !x
																i
														 else
																0
															end
											 					}.reduce(:+)

# Answer: 4179871
