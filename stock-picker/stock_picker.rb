def stock_picker(arr)
  sale_return = []
  stock_pairs = []

  arr.each_with_index do |buy_value, buy_index|
    sell_value = arr[buy_index..-1].max 

    sale_return.push(sell_value - buy_value)
    stock_pairs.push << [buy_value, sell_value]
  end

  result = stock_pairs[sale_return.index(sale_return.max)]
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