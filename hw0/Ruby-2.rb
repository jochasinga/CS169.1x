#!/usr/bin/env ruby

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(str)
  /[^aeiou]/i =~ str[0] ? true : false
end

def binary_multiple_of_4?(str)
  l = str.length
  ar  = str.scan /[01]/
  if ar.length != l
    return false
  else
    ar.join('').to_i % 4 == 0 ? true : false
  end
end