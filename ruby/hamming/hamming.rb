
class Hamming
	VERSION = 1
	def Hamming.compute(a ,b)
		if a.length != b.length
			raise ArgumentError
		end

		first = a.chars
		second = b.chars
		counter = 0

		first.each_index do |x| 
			if second[x] != first[x]
				counter += 1
			end
		end
		counter
	end
end