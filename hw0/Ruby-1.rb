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

class Array
  
  def sum()
    self.empty? ? 0 : self.inject(:+)
  end
  
  def max_2_sum()
    if self.empty?
      0
    elsif self.length == 1
      self[0]
    else
      self.sort.last(2).inject(:+)
    end
  end
    
  def sum_2_n?(n)
    if self.length == 1 || self == []
        false
    else
      if self.inject(:+) == n
        true
      else
        false
      end
    end
  end
  
end

# Singh's solution

def sum(array)
	ans = 0
	for i in array
		ans += i
	end
	return ans
end

def max_2_sum(array)
	array.sort!
	return array[-1].to_i + array[-2].to_i
end

def sum_to_n?(array,n)
	ok = false
	for i in 0...array.length
		for j in i+1...array.length
			if array[i] + array[j] == n
				ok = true
				puts array[i],array[j]
				break
			end
		end
	end
	return ok
end
