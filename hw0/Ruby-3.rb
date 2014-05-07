#!/usr/bin/env ruby

class BookInStock
   # Getter and setter for @isbn, @price
   attr_accessor :isbn, :price
   
  def initialize(isbn, price)
    raise ArgumentError unless isbn.length > 0 and price > 0

    @isbn = isbn
    @price = price

  end
  
  # Convert @price to string currency format
  def price_as_string()
    a = @price.to_s
    b = a.index('.')
    
    if b == nil
      "$#{@price}.00"
    elsif b != nil
      c = a[b..a.length]
      if c.length > 3
        "$#{@price.round(2)}"
      elsif c.length == 3
        "$#{@price}"
      elsif c.length < 3
        "$#{@price}0"
      else
        "$#{@price}0"
      end
    end
  end
  
end