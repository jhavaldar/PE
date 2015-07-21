def square_of_sum(n)
	return (n*(n+1)/2)**2
end

def sum_of_squares(n)

	sum = 0
	for i in 1..n
		sum+=i**2
	end

	return sum
end

puts (square_of_sum(100) - sum_of_squares(100))
