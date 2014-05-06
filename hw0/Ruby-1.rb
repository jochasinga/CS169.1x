#!/usr/bin/env ruby

def sum(int_array)
  int_array.empty? ? 0 : int_array.inject(:+)
end

def max_2_sum(int_array)
  case int_array
  when int_array.empty?
    0
  when int_array.length==1
    int_array[0]
  else
    int_array.sort.last(2).inject(:+)
end

def sum_2_n?(n, int_array)
  ok? = false
  if int_array.empty? || int_array.length == 1
    false
  else
    int_array.each do |i, j|
      j = i+1
      i + j == n ? ok = true : next
    end
  end
  return ok?
end

