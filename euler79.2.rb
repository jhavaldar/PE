=begin
	
Write all the digits in order
Swap if there's a discrepancy
	
=end

fname = "p079_keylog.txt"
file = File.open(fname, "r")
contents = file.read.split("\n").collect{ |word|  word.split("") }.collect{ |num| num.collect {|elt| elt.to_i} }
file.close


code = "0123456789".split("").map{|word| word.to_i}

def index(arr, num)
	if arr.find_index(num)
		return arr.find_index(num)
	else
		return -1
	end
end



	code.sort_by! {|num| index(contents[0], num)}
	code.sort_by! {|num| index(contents[1], num)}


puts code
