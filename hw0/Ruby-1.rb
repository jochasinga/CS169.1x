#!/usr/bin/env ruby

def sum(int_array)
  int_array.empty? ? 0 : int_array.inject(:+)
end

def max_2_sum(int_array)
  case 
  when int_array.empty?
       0
  when int_array.length==1
       int_array[0]
  else
       int_array.sort.last(2).inject(:+)
  end
end

def sum_2_n?(int_array, n)

    limit = int_array.length

    if limit<= 1
       false
    else
       (0..limit).each do |i|
           ((i+1)...limit).each do |j|
	       break if int_array[i]+int_array[j]==n
           end
           return true
       end
    end
end
