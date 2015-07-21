=begin
	
Gonna compute the digits of 100!

=end




def sum_of_digits(n)

	max_num = n

	sum = 0

	while max_num > 0 do
		# Get the lowest digit
		sum += max_num%10

		#Shift a digit to the left
		max_num = (max_num/10).floor
	end

	return sum
end


def fact(n) 

	prod = 1

	while n > 0
		prod*=n
		n-=1
	end

	return prod
end

puts sum_of_digits(fact(100))