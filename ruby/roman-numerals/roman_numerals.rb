require 'pry'

module BookKeeping
  VERSION = 2
end

public
def to_roman
  digits = self.to_s.chars
  ones = numeral_consructor(digits[-1].to_i, 'I', 'V', 'X')
  tens = numeral_consructor(digits[-2].to_i, 'X', 'L', 'C')
  hundo = numeral_consructor(digits[-3].to_i, 'C', 'D', 'M')
  thousand = numeral_consructor(digits[-4].to_i, 'M')
  return [thousand, hundo, tens, ones].reject { |c| c == nil }.reduce(:+)
end

def roman_digit(digit, small_char, drop_amt, insert_at, big_char)
  return Array.new(digit, small_char).drop(drop_amt).reduce(:+).insert(insert_at, big_char)
end

def numeral_consructor(digit, small_char, big_char = 0, extra_char = 0)
  if digit < 4
    return Array.new(digit, small_char).reduce(:+)
  elsif digit == 5
    return big_char
  elsif digit > 4 && digit < 9 
    roman_digit(digit, small_char, 5, 0, big_char)
  elsif digit == 4
    roman_digit(digit, small_char, 3, -1, big_char) 
  else digit > 8
    roman_digit(digit, small_char, 8, -1, extra_char)
  end
end











