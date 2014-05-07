##!/usr/bin/env ruby

def sum(int_array)
  int_array.empty? ? 0 : int_array.inject(:+)
end

def max_2_sum(int_array)

  if int_array.empty?
     0
  elsif int_array.length == 1
     int_array[0]
  else
     int_array.sort.last(2).inject(:+)
  end
end

def sum_to_n?(int_array, n)

    if int_array.length > 1
       c = int_array.combination(2).to_a.map {|i| i.inject(:+)}.include?(n)
    else
       false
    end
end

puts sum_to_n?([1,2,3,4,5], 5).to_s + " should == true"
puts sum_to_n?([-1,-2,3,4,5,-8], 12).to_s + " should == false"
puts sum_to_n?([1], 1).to_s + " should == false"
puts sum_to_n?([], 0).to_s + " should == false"