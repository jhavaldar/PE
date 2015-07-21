def pythag()

	a = 333

	while a >=1

		b = 1000-a 

		while b>=1

			c = 1000-(a+b)

			if a**2 + b**2 == c**2
				return a*b*c
			end

			b-=1
		end

	a-=1

	end

end

puts pythag()