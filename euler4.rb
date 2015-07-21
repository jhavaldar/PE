=begin
	
To find the palindromes, we first test if its 5 digits or 6 digits.
If it's 5 digits, we find the digit values using mods
If it's 6, we do the same.

To find the nth digit, we do %10^n/10^n-1.floor

	
=end

def is_palindrome(n) 
	i = 1

	#find the number of digits
	while (n > 10**i) do
		i+=1
	end

	j = 1

	while j <= (i/2).floor do
		# Get the ith digit, and the opposite digit

		dig1 = ((n % 10**j) / 10**(j-1)).floor
		dig2 = (n % 10**(i-j+1) / 10**(i-j)).floor
		
		if dig1 != dig2
			return false
		end

		j+=1
	end

	return true
end


# Now that palindrome is working, we have to find the largest palindrome. Should we search the numbers first, or the factors first?
# The numbers are: 988002. So nearly 10^7 numbers.
# The combinations are 10^3 * 10^3. So 10^6 combinations.
# Evidently we should go with combinations.
# What's the best way of searching? probably just incrementing.

def palindrome(a, b)


	max = 1

	while a > 100 do

		j = b

		while j > 100 do 

			if is_palindrome(a*j) && a*j > max
				max = a*j
			end

			j-=1
		end

		a-=1

	end

	return max

end

puts palindrome(999, 999)