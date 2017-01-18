require 'pry'

module BookKeeping
	VERSION = 2
end

public
def to_roman
	digits = self.to_s.chars
  ones = ones_place(digits[-1].to_i)
  tens = tens_place(digits[-2].to_i)
  hundo = hundo_place(digits[-3].to_i)
  thousand = thousand_place(digits[-4].to_i)
  return [thousand, hundo, tens, ones].reject { |c| c == nil }.reduce(:+)
end

def multi_char_num(digit, small_char, drop_amt, insert_at, big_char)
  return Array.new(digit, small_char).drop(drop_amt).reduce(:+).insert(insert_at, big_char)
end

def ones_place(digit)
	if digit < 4
	    return Array.new(digit, 'I').reduce(:+)
	elsif digit == 5
		return 'V'
  elsif digit > 4 && digit < 9 
  	multi_char_num(digit, 'I', 5, 0, 'V')
  elsif digit == 4
    multi_char_num(digit, 'I', 3, -1, 'V') 
  else digit > 8
  	multi_char_num(digit, 'I', 8, -1, 'X')
  end
end

def tens_place(digit)
	if digit == 5
		return 'L'
	elsif digit < 4 && digit < 9
    ten = Array.new(digit, 'X').reduce(:+)
    return ten
  elsif digit > 4 && digit < 9
  	multi_char_num(digit, 'X', 5, 0, 'L')
  elsif digit == 4
  	multi_char_num(digit, 'X', 3, -1, 'L')
  else digit > 8 
  	multi_char_num(digit, 'X', 8, -1, 'C')
  end
end

def hundo_place(digit)
	if digit == 5
		return 'D'
  elsif digit < 4 
  	hundo = Array.new(digit, 'C').reduce(:+)
  elsif digit == 4
  	multi_char_num(digit, 'C', 3, -1, 'D')
  else digit > 8
  	multi_char_num(digit, 'C', 8, -1, 'M')
  end
end

def thousand_place(digit)
  if digit < 4 
  	Array.new(digit, 'M').reduce(:+)
  end
end














