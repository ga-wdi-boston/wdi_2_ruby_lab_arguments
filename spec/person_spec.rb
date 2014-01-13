require 'spec_helper'
require_relative '../lib/person'

describe Person do
	describe "#initialize" do
		it 'must have a name' do
			person = Person.new("Mike")
			expect(person.name).to eq "Mike"
		end
		it 'randomly assigns default values for age, weight, and height' do
			person = Person.new("Mike")
			expect(person.age).to eq 0
			expect(60..100).to include person.weight
			expect(150..200).to include person.height
		end
		it 'can be assigned values for age, weight, and height' do
			person = Person.new("Mike", age: 100, weight: 150, height: 100, hair_color: "Red", eye_color: "Blue")
			expect(person.age).to eq 100
			expect(person.weight).to eq 150
			expect(person.height).to eq 100
			expect(person.hair_color).to eq "Red"
			expect(person.eye_color).to eq "Blue"
		end
	end

	describe '#greet_people' do
		before(:each) do
			@mike = Person.new("Mike")
			@prescott = Person.new("Prescott")
			@nick = Person.new("Nick")
		end
		it 'can greet any number of people' do
			person = Person.new("Matt")
			expect(person.greet_people( people: [@mike, @prescott, @nick] )).to eq ['Hi Mike', 'Hi Prescott', 'Hi Nick']
		end
	end

	describe '#weight_in_stones' do
		it 'should convert a persons weight in kg to stones' do
			mike = Person.new("Mike", weight: 100)
			expect(mike.weight_in_stones).to eq 15.747
		end
	end
end
