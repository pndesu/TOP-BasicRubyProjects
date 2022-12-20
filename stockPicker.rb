def stockPicker(stocks)
    length = stocks.size
    max = maxBuyIndex = maxSellIndex = 0
    stocks.each_with_index do |buyStock, buyIndex|
        stocks[buyIndex+1..].each_with_index do |sellStock, sellIndex|
            if (sellStock - buyStock > max)
                max = sellStock - buyStock
                maxBuyIndex = buyIndex
                maxSellIndex = sellIndex + buyIndex + 1
            end
        end
    end
    p [maxBuyIndex, maxSellIndex]
end

stocks = [17,6,4,9,15,8,18,6,1,10]
stockPicker(stocks)