array = [17,3,6,9,15,8,6,1,10]

def stock_picker(array)
    profit = 0
    buy_and_sell = []
    array.each_with_index do |price, indx|
        min = array[indx..-1].max
        if min - price > profit
            profit = min - price
            buy_and_sell = [indx, array.index(min)]
        end
    end
    p buy_and_sell

end

stock_picker(array)