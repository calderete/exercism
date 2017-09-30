module BookKeeping
  VERSION = 2
end

@@all_names = []

class Robot

  def initialize
    @name = ('A'..'Z').to_a.sample(2).reduce(:+) + Kernel.srand.to_s.chars.sample(3).reduce(:+)
    register_name(name)
  end

  def name
    return @name
  end

  def reset
    @name = ('A'..'Z').to_a.sample(2).reduce(:+) + Kernel.srand.to_s.chars.sample(3).reduce(:+)
  end

  def register_name(name)
    @@all_names.include?(name) ? reset : @@all_names.push(name) 
  end

end