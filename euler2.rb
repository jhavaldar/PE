fib1 = 1
fib2 = 2

sum = 0

while fib2 < 4000000

	if fib2%2 == 0
		sum+= fib2
		# puts fib2
	end



	# This is the part where we are creating the next two iteratively.

	temp = fib1 + fib2
	fib1 = fib2
	fib2 = temp
end

puts sum
