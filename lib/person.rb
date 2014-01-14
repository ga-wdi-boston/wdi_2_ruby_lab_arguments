class Person
	attr_accessor :name, :age, :weights, :height, :eye_color, :hair_color, :pets
	def initialize(name, option_hash, *pets)
		@name = name
		@age = option_hash[:age] || '0day'
		@weights = option_hash[:weights] || "#{Random.new.rand(10..60)}"
		@height = option_hash[:height] || "#{Random.new.rand(150..200)}"
		@eye_color = option_hash[:eye_color] || nil
		@hair_color = option_hash[:hair_color] || nil
		@pets = pets
	end

	def weight_to_stone
		@weights * 6.35
	end
	def greeting_people(greeting = 'Hi', *people)
		people.each{|person| "#{greeting} #{person}"}
	end
end


