def stock_picker(arr)
  best_return = []

  arr.each_with_index do |buy_value, buy_index|
    best_return.push(arr[buy_index..-1].max - buy_value)
  end

  result = []
  result = best_return.max

  #TODO: ACTUALLY RETURN THE BUY VALUE AND SELL VALUE RATHER THAN THE GREATEST RESULT
  puts result
  result
end

stonks = [
  120,
  22,
  61,
  18,
  2,
  17,
  82,
  45,
  3,
  20,
  1,
]

stock_picker(stonks)