def coinsums(coins_list, amount)
  sum = 0 

  if amount == 0 
    return 1
  end

  # convert coins_list to the correct format
  coins_list.sort!

  for val in coins_list
    top = amount
    while top >= val
      sum += coinsums(coins_list.take_while {|i| i < val }, top - val)
      top = top - val
    end
  end

  return sum

end

coins_list = [1, 2, 5, 10, 20, 50, 100, 200]
amount = 200

p coinsums(coins_list, 200)
