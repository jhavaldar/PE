def rotate(arr)
  return arr[1..-1] + [arr[0]]
end

max = 0

(1..10).to_a.permutation.each do |perm|
  if perm[0] + perm[1] == perm[3] + perm[4]
    if perm[4] + perm[2] == perm[6] + perm[5]
      if perm[6] + perm[3] == perm[8] + perm[7]
        if perm[8] + perm[5] == perm[9] + perm[1]
          if [perm[0], perm[4], perm[6], perm[8], perm[9]].include? (10)
            arr = [[perm[0], perm[1], perm[2]], [perm[4], perm[2], perm[3]], [perm[6], perm[3], perm[5]], [perm[8], perm[5], perm[7]], [perm[9], perm[7], perm[1]]]      
            m = [perm[0],perm[4],perm[6], perm[8], perm[9]].min 
            while arr[0][0] != m
              arr = rotate arr
            end
            str = arr.reduce(:+).map(&:to_s).reduce(:+).to_i 
            if str > max 
              max = str 
            end
          end
        end
      end
    end
  end
end
p max

# Answer : 6531031914842725
