def sundays(a,b,c)
	x = c
	sun = 0

	# Initially, you're at Jan 1st, that year
	i = a

	while i < b

		# Is there a leap year?

		if i%4 == 0
			if i%100 == 0
				if i%400 == 0
					leap = true
				else
					leap = false
				end
			else
				leap = true
			end
		else
			leap = false
		end

		puts "YEAR: #{i}"

		# Is there a Sunday on Jan 1st?
		if x%7==0
			puts "SUNDAY in January"
			sun+=1
		end

		x+=31

		# What about february 1st?

		if x%7==0
			puts "SUNDAY in February"
			sun+=1
		end

		if leap
			x+=29
		else
			x+=28
		end

		# March?
		if x%7==0
			puts "SUNDAY in March"
			sun+=1
		end

		x+=31

		# April?
		if x%7==0
			puts "SUNDAY in April"
			sun+=1
		end

		x+=30

		# May?

		if x%7==0
			puts "SUNDAY in May"
			sun+=1
		end

		x+=31

		if x%7==0
			puts "SUNDAY in June"
			sun+=1
		end

		x+=30

		if x%7==0
			puts "SUNDAY in July"
			sun+=1
		end

		x+=31

		if x%7==0
			puts "SUNDAY in August"
			sun+=1
		end

		x+=31

		if x%7==0
			puts "SUNDAY in September"
			sun+=1
		end

		x+=30

		if x%7==0
			puts "SUNDAY in October"
			sun+=1
		end

		x+=31

		if x%7==0
			puts "SUNDAY in November"
			sun+=1
		end

		x+=30

		if x%7==0
			puts "SUNDAY in December"
			sun+=1
		end

		x+=31

		i+=1

	end

	sun
end

p sundays(1900,2001,1)

# Answer: 171