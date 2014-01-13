# You should be able to create a new Person.
# The person must be supplied a name. The person also has attributes of:
# age (days)
# weight (kg)
# height (cm)
# eye_color
# hair_color
# pets (array)

# If no age is provided, then their age should be 0 days.

# If no weight is provided, the weight should be randomly assigned between 60-100kg
# If no height is provided, the height should be randomly assigned between 150-200cm
# If no eye or hair colors are provided, don't do anything with them.
# Write a method that returns their weight as stones).
#All other properties should be able to be get/set.

# Write a method that will allow them to greet any number
#of other people objects (not strings) with a greeting (default value, "Hi").


class Person
	attr_accessor :name, :age,:number_of_pets, :eye_color, :hair_color, :weight, :height, :number_of_pets

	def initialize(name, number_of_pets, age=0, options={})
		@name = name
		@age = age
		@number_of_pets = [] << number_of_pets
		@eye_color = options[:eye_color]
		@hair_color = options[:hair_color]
		@weight = options[:weight] || rand(60..100)
		@height = options[:height] || rand(150..200)
	end
#stone = kg * 0.15747

	def weight_in_stones
		person_weight_in_stones = @weight * 0.157747
		return person_weight_in_stones
	end

end
