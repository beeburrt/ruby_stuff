# stock_picker.rb

def stock_picker(prices)
  best_days = []
  big_diff = 0
  # max, min = prices.max, prices.min if (prices.index(min) < prices.index(max))
  # p max
  # p min

  prices.combination(2).each do |combo|
    # p combo
    # p index(combo)
    unless big_diff > (combo[1] - combo[0])
      big_diff = combo[1] - combo[0]
      best_days[0] = prices.index(combo[0])
      best_days[1] = prices.index(combo[1])
    end
  end
  p("#{best_days} best days")
  p("#{big_diff} big_diff")

  # prices.each_with_index do |price, idx|
  # prices.each_with_index do |p, i|

  # p price
  # p prices[idx..]
  # p highest_val = prices[idx..].max
  # p highest_idx = prices[idx..].each_with_index.max[1] + idx
  # best_days << [highest_val - price, idx, highest_idx]
  # p '----'

  # end
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
