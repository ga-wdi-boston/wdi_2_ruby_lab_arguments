class Person
	attr_accessor :name, :age, :weight, :height, :eye_color, :hair_color, :pets
	def initialize(name, options={})
		@name = name
		@age = options[:age] || 0
		@weight = options[:weight] || 60 + rand(40)
		@height = options[:height] || 150 + rand(50)
		@eye_color = options[:eye_color]
		@hair_color = options[:hair_color]
		@pets = options[:pets]
	end

	def greet_people(options)
		options[:greeting] ||= "Hi"
		options[:people].map { |person| "#{options[:greeting]} #{person.name}" }
	end

	def weight_in_stones
		self.weight.to_f * 0.15747
	end
end
