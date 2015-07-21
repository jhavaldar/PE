rows = File.open("triangle2.txt", "r").read.split("\n").map {|elt| elt.split(" ").map{|num| num.to_i}}

q = {0 => [rows[0][0]]}
for i in 0...(rows.size-1)
	qnew = Hash.new	
	q.keys.each do |key| 
		q[key] = [q[key].max]
		(qnew[key] ||= []) << (q[key][0] + rows[i+1][key]) 
		(qnew[key+1] ||= []) << (q[key][0] + rows[i+1][key+1]) 
	end
	q = qnew
end

p q.values.reduce(:+).max

# Answer: 7273 (IN 0.3 seconds)