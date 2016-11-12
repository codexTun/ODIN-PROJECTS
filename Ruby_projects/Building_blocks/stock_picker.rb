
#!/usr/bin/ruby

def stock_picker (prices)
    temp_arr = []
    soln = []
    prices.each do |price|
        x = prices.index(price)
        while x < prices.length 
            temp_arr << (prices[x] - price)
            x+=1
        end
    end
    
    prices.each do |price|
        x = prices.index(price)
        while x < prices.length 
            if temp_arr.max == (prices[x] - price)
                soln << prices.index(price) << prices.index(prices[x])
            end 
        
        x+=1
        
        end
    end
     soln 

end

puts stock_picker([17,3,6,9,15,8,6,1,10])

#not quite right considering interview cake suggestions