def atm(total, denominations)
    
    # will return a hash
    notes = denominations.inject({}) do |hash, denomination|

        # divmod returns an array, first element is the number of times it goes inside and 2nd element is te remainder
        hash[denomination] = total.divmod(denomination)
        
        # total subtract the product of the first element in array and denomination value
        total -= total.divmod(denomination).first * denomination
        hash
    end 
    
    # re-assign each key the first value in the denomations array
    notes.map do |k, v|
        notes[k] = v.first
    end
    
    notes
end 


p atm(795, [200, 100, 20, 10, 5])