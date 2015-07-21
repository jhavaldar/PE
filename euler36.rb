def to_bin(n)

	digs = Array.new

	while n > 0 do
		digs.push(n%2)
		n/=2
	end

	return digs.reverse.inject(""){|acc, elt| acc+=elt.to_s}
end

# Now I have to find all the palindromes less than one million.

def palindromes(n)

	palindromes = Array.new()

	(1..n).each do |elt|
		if elt.to_s == elt.to_s.reverse
			palindromes.push(elt)
		end

	end
	
	return palindromes
end

def binary_palindromes(n)

	palindromes(n).delete_if {|num| to_bin(num) != to_bin(num).reverse}
end

puts binary_palindromes(10**6).inject(0) {|acc, elt| acc+elt}
