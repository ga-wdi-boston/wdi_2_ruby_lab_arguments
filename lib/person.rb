require 'pry'

class Person

	attr_accessor :name, :age, :height, :eye_color, :hair_color, :pets, :weight

	def initialize(name, options = {})
		@name = name
		@age = options[:age] || 0
		@weight = options[:weight] || (60..100).to_a.sample
		@height = options[:height] || (150..200).to_a.sample
		@eye_color = options[:eye_color]
		@hair_color = options[:hair_color]
		@pets = options[:pets]
	end

	def name_set?
		!@name.empty?
	end


	def weight_in_stones
		@weight/6.35
	end

	def greet_people(options)
		greeting = options[:greeting] || 'Hi'
		binding.pry
		options[:person].map {|person| puts '#{greeting} #{person.name}'}
	end


end
