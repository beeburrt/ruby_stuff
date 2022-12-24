# stock_picker.rb

def stock_picker(prices)
  best_days = [nil, nil]
  big_diff = 0

  prices.combination(2).each do |combo|
    p combo
    p prices.index(combo)
    unless big_diff > (combo[1] - combo[0])
      big_diff = combo[1] - combo[0]
      best_days[0] = prices.index(combo[0])
      best_days[1] = prices.index(combo[1])
    end
  end

  best_days
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
