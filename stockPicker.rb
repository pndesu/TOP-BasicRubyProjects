# def stockPicker(stocks)
#     length = stocks.size
#     max = maxBuyIndex = maxSellIndex = 0
#     stocks.each_with_index do |buyStock, buyIndex|
#         stocks[buyIndex+1..].each_with_index do |sellStock, sellIndex|
#             if (sellStock - buyStock > max)
#                 max = sellStock - buyStock
#                 maxBuyIndex = buyIndex
#                 maxSellIndex = sellIndex + buyIndex + 1
#             end
#         end
#     end
#     p [maxBuyIndex, maxSellIndex]
# end

# stocks = [17,6,4,9,15,8,18,6,1,10]
# stockPicker(stocks)
input = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
    arr = prices.each_with_index.to_a.combination(2).max_by{|buy,sell| sell[0]-buy[0]}
  results = prices.each_with_index.to_a.combination(2).max_by{|buy,sell| sell[0]-buy[0]}.map{|price, i| i}
end

puts(stock_picker(input))