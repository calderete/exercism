class HelloWorld
	def self.hello(*name)
		if name == []
			name = "World"
		else name = name[0]
		end
		
		return "Hello, #{name}!"
	end
end