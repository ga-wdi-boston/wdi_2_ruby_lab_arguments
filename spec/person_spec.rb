require 'spec_helper'
require_relative '../lib/person'
require_relative '../lib/pet'

describe Person do

	before(:each) do
		@person = Person.new('Emilie', age: 60)
		@person_name_only = Person.new('Chase')
		@person_complete = Person.new('Sam', age: 34, weight: 75, height: 150, pets: [Pet.new('Spot'), Pet.new('Jade')])
	end

	describe '#initialize' do
		it 'takes necessary parameter name and assigns to attribute' do
			expect(@person.name).to eq 'Emilie'
		end

		it 'sets age if specified' do
			expect(@person.age).to eq 60
		end

		it 'sets age to 0 if not specified' do
			expect(@person_name_only.age).to eq 0
		end

		it 'sets weight if specified' do
			expect(@person_complete.weight).to eq 75
		end

		it 'sets weight to 60-100 kg if not specified' do
			expect(@person.weight).to be <= 100
			expect(@person.weight).to be >= 60
		end

		it 'sets height if specified' do
			expect(@person_complete.height).to eq 150
		end

		it 'sets height to random number between 150 and 200 if not specified' do
			expect(@person.height).to be <= 200
			expect(@person.height).to be >= 150
		end
	end

	describe '#weight_in_stones' do
		it 'returns weight in stones' do
			expect(@person_complete.weight_in_stones).to eq 11.8104643.to_i
		end
	end

	describe '#greet' do
		it 'returns an array' do
			expect(@person.greet(people: [Person.new('Agatha')]).class).to eq Array
		end

		it 'returns array with string Hi and name if greeting not specified' do
			expect(@person.greet(people: [Person.new('Agatha')])[0]).to eq 'Hi, Agatha.'
		end

		it 'returns an array of greeting and name if greeting specified' do
			expect(@person.greet(greeting: 'Hey there', people: [Person.new('Agatha')])[0]).to eq 'Hey there, Agatha.'
		end

		it 'returns an array of greeting and names if greeting specified and passed multiple people' do
			expect(@person.greet(greeting: 'Hey there', people: [Person.new('Agatha'), Person.new('Sam')])).to eq ['Hey there, Agatha.', 'Hey there, Sam.']
		end
	end

end