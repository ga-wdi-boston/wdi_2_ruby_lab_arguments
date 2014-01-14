require 'spec_helper'
require_relative '../lib/person'

describe Person do

 	describe '#initialize' do

 		it 'will return false if pet does not have a name' do
			jack = Person.new('')
			expect(jack.name_set?).to eq false
		end

		it 'will return 0 if no age is provided' do
			new_person = Person.new('Bill')
			expect(new_person.age).to eq 0
		end

		it 'will return the age if age is provided' do
			new_person = Person.new('Bill', age: 20)
			expect(new_person.age).to eq 20
		end

		it 'will return between 60 and 100 kgs if no weight is provided' do
			new_person = Person.new('Bill')
			expect((60..100)).to include new_person.weight
		end

		it 'will return the correct weight if it is provided' do
			new_person = Person.new('Bill', age: 40, weight: 50)
			expect(new_person.weight).to eq 50
		end

		it 'will return between 150 and 200 kgs if no weight is provided' do
			new_person = Person.new('Bill')
			expect((150..200)).to include new_person.height
		end

		it 'will return the correct height if it is provided' do
			new_person = Person.new('Bill', age: 40, weight: 50, height: 300)
			expect(new_person.height).to eq 300
		end

		it 'will return nil if no eye color is set' do
			new_person = Person.new('Bill')
			expect(new_person.eye_color).to eq nil
		end

		it 'will return nil if no hair color is set' do
			new_person = Person.new('Bill')
			expect(new_person.hair_color).to eq nil
		end

		it 'will return an array of pets if one is set' do
			new_person = Person.new('Bill', pets: ['dog', 'cat', 'alligator'])
			expect(new_person.pets).to eq ['dog', 'cat', 'alligator']
		end
 	end

	describe '#weight' do

		it 'will return weight in stones' do
			new_person = Person.new('Bill', weight: 200)
			expect(new_person.weight_in_stones).to eq 200/6.35
		end

	end

	describe '#greeting' do
		before(:each) do
			@jack = Person.new('Jack')
			@john = Person.new('John')
			@eric = Person.new('Eric')
		end

		it 'will return a nice greeting' do
			new_person = Person.new('Bill')
			expect(new_person.greet_people(greeting: 'Hello', person: [@jack, @john, @eric])).to eq ['Hello Jack', 'Hello John', 'Hello Eric']
		end

		# it 'will return a nice greeting' do
		# 	new_person = Person.new('Bill')
		# 	expect(new_person.greet_people(greeting: 'Hello', person: Person.new('James'), person: Person.new('Jack'))).to eq 'Hello James'
		# end


	end


end
