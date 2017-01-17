module BookKeeping
	VERSION = 2
end

class Raindrops

	def self.convert(n)
		drops = String.new
		drop_pairs = { 3 => "Pling", 5 => "Plang", 7 => "Plong" }
		drop_pairs.each_pair { |prime, drop| drops.insert(-1, drop) if n % prime == 0 }
		drops = n.to_s if drops.length == 0
		return drops
	end

end