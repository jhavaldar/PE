=begin
	
To start with, I found an upper bound for n

n <= 9^5 * (logn + 1)

logn+1 will give us an upper bound on the number of digits. 9^5 is the greatest value of each.

Plugging into Wolfram Alpha,

1 <= n <= 866731

So now we're talking.

Testing on 4th power: n is bounded by 80689.
	
=end

def pow_sum_of_digits(n, pow)

	max_num = n

	sum = 0

	while max_num > 0 do
		# Get the lowest digit
		sum += (max_num%10)**pow

		#Shift a digit to the left
		max_num = (max_num/10).floor
	end

	return sum
end



def powers (pow, max)

	sum = 0

	for i in 2..max
		# Calculate the sum of digits
		if pow_sum_of_digits(i, pow) == i
			puts i
			sum+=i
		end
	end

	puts "Sum = " + sum.to_s

end

powers(5, 866731)