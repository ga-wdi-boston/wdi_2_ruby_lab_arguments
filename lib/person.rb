class Person
	attr_accessor :name, :age, :weight, :height, :eye_color, :hair_color, :pets

	def initialize (name, options={})
		@name = name
		@age = options[:age] || 0
		@weight = options[:weight] || [60..100].sample
		@height = options[:height] || [150..200].sample
		@eye_color = options[:eye_color]
		@hair_color = options[:hair_color]
		@pets = [] << options[:pets]
	end
end
