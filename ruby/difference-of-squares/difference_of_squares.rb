module BookKeeping
	VERSION = 3
end

class Squares

  def initialize(n)
  	@number_list = (0..n).to_a 
  end

  def square_of_sum
  	square = @number_list.reduce(:+)**2
    square
  end

  def sum_of_squares
  	sum = @number_list.map { |n| n**2 }.reduce(:+)
  	sum
  end

  def difference
  	square_of_sum - sum_of_squares
  end

end