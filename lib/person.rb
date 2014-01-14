class Person
	attr_accessor :name, :age, :weight, :height, :eye_color, :hair_color, :pets

	def initialize (name, age=0, weight, height, eye_color, hair_color, pets)
		@name = name
		@age = age
		@weight = [60..100].sample
		@height = [150..200].sample
		@eye_color = eye_color
		@hair_color = hair_color
		@pets = [] << pets
	end
end

def stones(weight)
	weight * 0.157473
end

weight = 67
