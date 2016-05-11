require 'time'
require 'date'

VERSION = 1

class Gigasecond
	def self.from(time)
		time = time + 10**9
	end
end