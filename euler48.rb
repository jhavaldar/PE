
def self_power(n)
	sum = 0
	for num in 1..n
		sum+=num**num%10**10
	end
	return sum%10**10
end

puts self_power(1000)