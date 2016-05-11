class HelloWorld


	def self.hello(*name)

		if name == []
	  	"Hello, World!"
		else
			name  = name.map do |n| 
				n.to_s
		 		return "Hello, #{n}!"
		 end
		end
	end

end