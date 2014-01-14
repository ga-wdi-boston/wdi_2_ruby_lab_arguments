
class Person

	attr_accessor :name, :age, :weight, :height, :eye_color, :hair_color, :pets_array

	# Initializes a new person. Name is required. Age defaults to 0. Weight and height default to random numbers within a specified range. Will accept eye color and hair color but not require them.

	def initialize(name, age = 0, weight = rand(60..100), height = rand(150..200), eye_color = nil, hair_color = nil)
		@name = name
		@age = age
		@weight = weight
		@height = height
	end

	def weight_in_stone
		weight_in_stone = @weight * 0.157473
	end

	def greet(*people)
		people.map {|person| "Hi #{person.name}."}
	end


end






