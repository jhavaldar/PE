=begin
	
Very similar to 30. I found upper bounds in the same way.

n <= 6.02814*10^6
	
=end

MAX = 6.02814*10**6

def fact(n) 

	prod = 1

	while n > 0
		prod*=n
		n-=1
	end

	return prod
end


def fn_sum_of_digits(n, fn)

	max_num = n

	sum = 0

	while max_num > 0 do
		# Get the lowest digit
		sum += fn.call((max_num%10))

		#Shift a digit to the left
		max_num = (max_num/10).floor
	end

	return sum
end

def e34 ()

	(3..MAX).inject(0) {|sum, num| 
							if fn_sum_of_digits(num, Proc.new{|n| fact(n)}) == num 
								sum + num 
							else 
								sum
							end}

end

puts e34()
