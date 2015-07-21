require '/Users/jhavaldar/Desktop/Jay/Programming/Project Euler/primes.rb'

$primes = (Primes::primes_less_than 10**4).delete_if {|elt| elt < 10**3}

nums = $primes.map {|num| num.to_s.chars.permutation.map{|elt| elt.reduce(:+)}.map(&:to_i).uniq}.map {|set| set.sort!}

def is_arith (arr)
  i = 0
  while i < arr.size - 2
    j = i + 1
    while j < arr.size - 1
      diff = arr[j] - arr[i]
      if ($primes.include? arr[i]) && ($primes.include? arr[j])
        if $primes.include? (arr[j] + diff)
          if arr[j..-1].include? arr[j] + diff
            return [arr[i],arr[j],arr[j]+diff]
          end
        end
      end
      j+=1
    end
  i += 1
  end
  return false
end

arr = Array.new

nums.each do |set|
  if is_arith set
    arr.push(is_arith set)
  end
end

p arr.uniq

#296962999629