=begin

Plan: iteratively calculate the nth fibonacci number, stop when contains 1000 digits.
3 digits -> greater than or equal to 100 -> 10^(n-1)
	
=end

fib1 = 1
fib2 = 1
term = 2

while fib2 < 10**(1000-1)

	# This is the part where we are creating the next two iteratively.

	temp = fib1 + fib2
	fib1 = fib2
	fib2 = temp
	term+=1

end

puts term