VERSION = 3

class Complement
	def self.of_dna(nucleotide)
		result = ""
		nucleotide.each_char do |n|
			if n == 'C'
				result += 'G'
			elsif n == 'G'
				result += 'C'
			elsif n == 'T'
				result += 'A'
			elsif n == 'A'
				result += 'U'
			else
				raise ArgumentError.new("Invalid input")
			end
		end
		return result
	end
end