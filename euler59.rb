########## FILE INPUT ############
fname = "cipher.txt"

file = File.open(fname, "r")
contents = file.read.split(",").map{|n| n.to_i}
file.close

######## END OF FILE INPUT ########

$count = 0

def write_to_file(contents)

	foutname = "outfile"+$count.to_s+".txt"
	outfile = File.open(foutname, "w")
	outfile.puts(contents)
	outfile.close

	$count+=1

end

def XOR_decrypt(contents, key)

	problem = contents

	# Pad the key to the length of the input.
	key*=(contents.size/key.size).floor+1
	key = key[0, contents.size]
	key = key.split("")

	problem = contents.map.with_index{|num,i| num^key[i].ord}

	return problem.map!{|num| num.chr}.reduce(:+)
end

def permutations (n)

	ascii = (32..126).each.to_a.permutation(n).map{|n| n.collect {|i| i.chr}.reduce(:+)}

end
=begin
str = " the "
permutations(3).each do |key| 
	puts key
	if XOR_decrypt(contents, key).include? str
		write_to_file(XOR_decrypt(contents, key))
	end
end
=end

########## FILE INPUT ############
fname = "outfile0.txt"

file = File.open(fname, "r")
num = file.read.split("")#.inject(0){|acc, elt| acc+elt.ord}
file.close

######## END OF FILE INPUT ########
puts no = num.inject(0){|acc, elt| acc+elt.ord}

