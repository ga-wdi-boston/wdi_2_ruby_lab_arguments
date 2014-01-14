class Person
	attr_accessor :name, :age, :weight, :height, :eye_color, :hair_color, :pets

	def initialize(name, options={})
		@name = name
		@age = options[:age] || 0
		@weight = options[:weight] || [60..100].sample
		@height = options[:height] || [150..200].sample
		@eye_color = options[:eye_color]
		@hair_color = options[:hair_color]
		@pets = [] << options[:pets]
	end

	def stones
		weight_in_stones = @weight * 0.157473
	end

	def greeting(options = {})
 		greeting = options[:greeting]
 		people = options[:people]
 		greeting_phrase = ""
 		greeting_phrase << "#{greeting} #{people}"
 		return greeting_phrase
 end
end
