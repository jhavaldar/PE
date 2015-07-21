fname = "p042_words.txt"

file = File.open(fname, "r")
contents = file.read.split(",")
file.close


def is_triangle(k)
	# We start the loop at sqrt(n)
	# For all n > 2, this will be less than n

	if k == 1 || k==3
		return true

	else
		seed = Math.sqrt(k).floor

		# Now, we increment and keep checking.
		while seed <= k do
			if (seed)*(seed+1)/2 == k
				return true
			end
			seed+=1
		end

		return false
	end

end

def word_to_sum (word)
	# We subtract the two quotes, 34 each, 78 total

	return word.split("").to_a.map { |char| char.ord-64}.reduce(:+)+60
end

def is_triangle_word (word)
	is_triangle(word_to_sum(word))
end

puts count = contents.inject(0) { |sum, word|
						    	if is_triangle_word(word)
						    		sum+1
						    	else
						    		sum
						    	end }