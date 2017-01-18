require 'pry'
require 'set'
module BookKeeping
  VERSION = 3
end

class Pangram
  
  def self.pangram?(string)
    return true if string.downcase.gsub(/[^a-z]/, '').chars.to_set.sort.eql? ('a'..'z').to_a
  end

end
