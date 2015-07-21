def distinct (r1, r2)

	sum = 0

	nums = Array.new

	for a in 2..r1
		for b in 2..r2
			if !nums.include?(a**b)
				nums.push(a**b)
			end
		end
	end

	return nums.size
end

puts distinct(100,100)