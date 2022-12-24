# stock_picker.rb

def stock_picker(prices)
  best_days = [nil, nil]
  big_diff = 0

  # prices.combination(2).each do |combo|
  #   # p combo
  #   # p index(combo)
  #   unless big_diff > (combo[1] - combo[0])
  #     big_diff = combo[1] - combo[0]
  #     best_days[0] = prices.index(combo[0])
  #     best_days[1] = prices.index(combo[1])
  #   end
  # end
  # puts("#{best_days} best days")
  # puts("#{big_diff} big_diff")

  # -- from stackoverflow --
  prices.each_with_index do |price, idx|
    prices.each_with_index do |p, i|
      p price
      p prices[idx..]
      p highest_val = prices[idx..].max
      p highest_idx = prices[idx..].each_with_index.max[1] + idx
      best_days << [highest_val - price, idx, highest_idx]
      p "----"
    end
  end
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
