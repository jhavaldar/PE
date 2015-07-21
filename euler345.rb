a = 
"  7  53 183 439 863 497 383 563  79 973 287  63 343 169 583
627 343 773 959 943 767 473 103 699 303 957 703 583 639 913
447 283 463  29  23 487 463 993 119 883 327 493 423 159 743
217 623   3 399 853 407 103 983  89 463 290 516 212 462 350
960 376 682 962 300 780 486 502 912 800 250 346 172 812 350
870 456 192 162 593 473 915  45 989 873 823 965 425 329 803
973 965 905 919 133 673 665 235 509 613 673 815 165 992 326
322 148 972 962 286 255 941 541 265 323 925 281 601  95 973
445 721  11 525 473  65 511 164 138 672  18 428 154 448 848
414 456 310 312 798 104 566 520 302 248 694 976 430 392 198
184 829 373 181 631 101 969 613 840 740 778 458 284 760 390
821 461 843 513  17 901 711 993 293 157 274  94 192 156 574
 34 124   4 878 450 476 712 914 838 669 875 299 823 329 699
815 559 813 459 522 788 168 586 966 232 308 833 251 631 107
813 883 451 509 615  77 281 613 459 205 380 274 302  35 805"

def max_index(a, except)
  max = -10**10
  index = -1
  for i in 0...a.length
    if (a[i] > max) && !(except.include? (i))
      max = a[i]
      index = i
    end
  end
  return index
end

matrix = []

for j in 1..15
  row = Array.new(15)
  matrix.push(row)
end

for i in 0...225
  row = i/15
  col = i%15
  matrix[row][col] = a[i*4,3].to_i
end

def find_max(matrix)

  #Find initial configuration
  config = Hash.new()

  except = []

  for i in 0...15
    j = max_index(matrix[i], except)
    config[i] = j
    except.push(j)
  end

  changed = true

  while changed
    changed = false
    # Do the swapping 
    for i in 0...15
      if max_index(matrix[i], []) == config[i]
        # Done
      else
        # Find the best swap and do it
        except = []
        j = max_index(matrix[i], except)

        while j != config[i]
          j = max_index(matrix[i], except)

          i2 = config.key(j) 

          if (matrix[i][j] + matrix[i2][config[i]]) > (matrix[i][config[i]] + matrix[i2][j])
            temp = config[i]
            config[i] = j
            config[i2] = temp
            changed = true
            break
          else
            except.push j 
          end
        end
      end
    end
  end

  sum = 0

  for key in config.keys
    sum += matrix[key][config[key]]
  end

  return sum

end


p find_max(matrix)
