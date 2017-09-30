require 'pry'

module BookKeeping
  VERSION = 2
end

public
def to_roman
  digits = self.to_s.chars
  ones = numeral_constructor(digits[-1].to_i, 'I', 'V', 'X')
  tens = numeral_constructor(digits[-2].to_i, 'X', 'L', 'C')
  hundo = numeral_constructor(digits[-3].to_i, 'C', 'D', 'M')
  thousand = numeral_constructor(digits[-4].to_i, 'M')
  return [thousand, hundo, tens, ones].reject { |char| char == nil }.reduce(:+)
end

def numeral_constructor(digit, small_char, big_char = nil, extra_char = nil)
  if digit < 4
    return Array.new(digit, small_char).reduce(:+)
  elsif digit == 5
    return big_char
  elsif digit == 4
    return small_char + big_char
  elsif digit > 4 && digit < 9 
    return Array.new(digit, small_char).drop(5).reduce(:+).insert(0, big_char)
  else digit > 8
    return Array.new(digit, small_char).drop(8).reduce(:+).insert(-1, extra_char)
  end
end