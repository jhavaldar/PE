def num_divisors(n)

	count = 0

	for i in 1..Math.sqrt(n).floor
		if n%i==0
			count+=2
		end
	end

	return count

end

def triangle(n)
	return (n*(n+1)/2)
end

def highly_triangular()

	triangle = 0

	n = 1700

	while num_divisors(triangle) <= 500
		triangle = n*(n+1)/2
		n+=1
	end

	return triangle
end

max = 162

k = 1600

while (num_divisors(triangle(k))) <= 500

	if num_divisors(triangle(k)) > max 
		max = num_divisors(triangle(k))
	end

	puts max

	k+=1
	
end

puts "MAX : " + triangle(k).to_s



# So far, I've gotten up to 1500, and I'm around 160. This is really, really slow.
# Perhaps a different method is to check if a number is triangular using an approximation method. And then find the highly divisible numbers first.