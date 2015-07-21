
	
fname = "p079_keylog.txt"
file = File.open(fname, "r")
contents = file.read.split("\n").collect{ |word|  word.split("") }.collect{ |num| num.collect {|elt| elt.to_i} }
file.close

class Node

	attr_accessor :value, :less, :greater

	def initialize(v)
		@value = v
		@less = Array.new
		@greater = Array.new
	end

	def lesser_add(v)
		if less.include? v
			less.push(v)
		end

	end

	def greater_add(v)
		if !greater.include? v
			greater.push(v)
		end
	end

	def ==(o)
		o.class == self.class && o.value == self.value
	end
	alias_method :eql?, :==

	def lesser_empty
		return less.empty?
	end

	def less_than (v)
		return less.include? Node.new(v)
	end

	def greater_empty
		return greater.empty?
	end

	def greater_than (v)
		return greater.include? Node.new(v)
	end


end

nodes = Array.new

contents.each do |arr|

	v1 = arr[0]
	v2 = arr[1]
	v3 = arr[2]

	# Push the values into the array
	[v1,v2,v3].each do |val|
		if !nodes.include? Node.new(val)
			nodes.push (Node.new(val))
		end
	end

end


contents.each do |arr|
	v1 = arr[0]
	v2 = arr[1]
	v3 = arr[2]

	for node in nodes
		# Fill in v1 values
		if node == Node.new(v1)
			node.greater_add(v2)
			node.greater_add(v3)
		# Fill in v2 values
		elsif node == Node.new(v2)
			node.lesser_add(v1)
			node.greater_add(v3)
		# Fill in v3 values
		elsif node == Node.new(v3)
			node.lesser_add(v1)
			node.lesser_add(v2)
		end
	end

end


for node in nodes
			puts "NODE: " + node.value.to_s + ": " + node.less.collect{|num| num.to_s}.inject(""){|acc, elt| 
															  if !acc.empty?
															  	acc + ", " + elt
															  else
															  	elt
															  end}
			puts "NODE: " + node.value.to_s + ": " + node.greater.collect{|num| num.to_s}.inject(""){|acc, elt| 
																  if !acc.empty?
																  	acc + ", " + elt
																  else
																  	elt
																  end}

end


=begin
	
	Each number is going to be a node
	Each of the 50 login attempts is really a set of 3 clues
	a < b < c
	b < c < d

	Every node has a number of nodes it is less than.
	Every node has a number of nodes it is greater than.

	The first thing to do is analyze to see if we can
	find any singularities, less than everything
	
=end