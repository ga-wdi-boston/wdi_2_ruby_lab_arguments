require 'pry'

class Person

	attr_accessor :name, :age, :weight, :height, :eye_color, :hair_color, :pets

	def initialize(options = {})

		# name, age=0, weight=nil, height=nil, eye_color=nil, hair_color=nil, pets=nil)

		# or you can accept all your optional parameters as a hash

		@name = options[:name]

		if options[:age].nil?
			@age = 0
		else
			@age = options[:age]
		end

		if options[:weight].nil?
			@weight = rand(60..100)
		else
			@weight = options[:weight]
		end

		if options[:height].nil?
			@height = rand(150..200)
		else
			@height = options[:height]
		end

		@eye_color = options[:eye_color]

		@hair_color = options[:hair_color]

		@pets = options[:pets]

	end

	def weight_in_stones
		@weight * 0.157473044418
	end

	def greet(greeting_options={})

		if greeting_options[:greeting].nil?
			@greeting = "Hi"
		else
			@greeting = greeting_options[:greeting]
		end

		greeting_options[:people_to_greet].map { |person| "#{@greeting} #{person.name}"}

	end

end
