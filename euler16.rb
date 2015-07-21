max_num = 2**1000

sum = 0


while max_num > 0 do
	# Get the lowest digit
	sum += max_num%10

	#Shift a digit to the left
	max_num = (max_num/10).floor
end

puts sum