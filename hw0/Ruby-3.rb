#!/usr/bin/env ruby

class BookInStock
   # Getter and setter for @isbn, @price
   attr_accessor :isbn, :price
   
   def initialize(isbn, price)
       raise TypeError unless price.is_a? Float and isbn.is_a? String
      
       @isbn=isbn
       @price=price
    
       if @price <= 0 || @isbn == ''
           raise ArgumentError, "@price <= 0 or @isbn == ''", caller
       end
   end
  
   # Convert @price to string currency format
   def price_as_string()
       return "$#{@price}0" 
   end
   
end