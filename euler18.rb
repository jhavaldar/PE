
# I exhaustively searched using breadth-first search. Not too efficient.

def choose(n,k)
	fact(n) / (fact(k)*fact(n-k))
end

def fact(n)
	(1..n).reduce(:*) || 1
end

def max_sum(rows)

	q = Array.new

	q.push(rows[0][0])

	for i in 0...(rows.size-1)
		count = 0

		qnew = Array.new

		for k in 0..i 

			a = rows[i+1][k]
			b = rows[i+1][k+1]

			init = count 

			(1..choose(i,k)).each do 
				qnew.push(q[count] + a)
				count+=1
			end

			count = init 

			(1..choose(i,k)).each do 
				qnew.push(q[count] + b)
				count+=1
			end


		end

		q = qnew
	end

	return q.max

end

file = File.open("triangle.txt", "r")
contents = file.read.split("\n").map {|elt| elt.split(" ").map{|num| num.to_i}}
file.close

rows = contents

p max_sum(rows)
