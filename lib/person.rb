class Person
	attr_accessor :name, :age, :weight, :height

	# Creates new instance with 1 required parameter and hash for optional parameters
	def initialize(name, options = {})
		@name = name
		@age = options[:age] || 0
		@weight = options[:weight] || 60 + rand(41)
		@height = options[:height] || 150 + rand(50)
		@eye_color = options[:eye_color]
		@hair_color = options[:hair_color]
		@pets = options[:pets]
	end

	# Converts to lbs then stones
	def weight_in_stones
		((@weight * 2.20462) / 14).to_i
	end

	# Clunky - but creates array and populates with personalized greeting strings.
	def greet(options = {})
		result = []
		greeting = options[:greeting] || 'Hi'
		options[:people].each {|person| result << "#{greeting}, #{person.name}."}
		return result
	end

end
