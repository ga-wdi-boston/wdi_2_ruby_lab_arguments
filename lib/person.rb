require 'pry'

class Person
	@@wei = rand(60..100)
	@@hei = rand(150..200)
 	attr_accessor :name, :age, :weight, :height, :eye_color, :hair_color, :pets
	def initialize(name, age, weight = @@wei, height = @@hei, eye_color = nil, hair_color, pets)
		@name = name
		@age = age
		@weight = weight
		@height = height
		@eye_color = eye_color
		@hair_color = hair_color
		@pets = pets
	end

	def stones
		@height.to_f * 6.35
	end

	def greet_people(greeting, *person)
		greeting = 'Hi'
		i = 0
		while i < person.length
		puts "#{greeting} #{person[i].name}"
		i += 1
	end
	end
end

person3 = Person.new('peter', 12123, 67, 180, "yellow", 'yellow', ['didi'])

person = Person.new("Joe", 12313, 70, 176, "blue", "black", ['Jim', 'kate'])
person.greet_people('hi', person3)