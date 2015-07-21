contents = File.open("names.txt", "r").read.split(",").sort!

contents = contents.each.with_index.map {|name,i| 
	name.split("").inject(0) {|sum, char| 
		sum + char.ord - 64} + 60 }

puts contents.map!.with_index {|name, i| name* (i+1) }.reduce(:+)
