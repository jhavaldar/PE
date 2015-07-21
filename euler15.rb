def e13(n)
	choose(2*n,n)
end

def choose(n,k)
	fact(n) / (fact(k)*fact(n-k))
end

def fact(n)
	(1..n).reduce(:*) || 1
end

p e13(20)

# Answer: 137846528820  