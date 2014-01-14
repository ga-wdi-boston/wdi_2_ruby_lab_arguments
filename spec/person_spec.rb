require 'spec_helper'
require_relative '../lib/person'
require 'pry'

describe Person do 
	describe '#Person' do
		person3 = Person.new('peter', 12123, 67, 180, "yellow", 'yellow', ['didi'])

		person = Person.new("Joe", 12313, 70, 176, "blue", "black", ['Jim', 'kate'])
		
		it "add the name of the person" do
			expect(person.name).to eq 'Joe'
		end

		it "add the age of the person" do
			expect(person.age).to eq 12313
		end

		it "add the height of the person" do
			expect(person.height).to eq 176 
		end

		it "add the color of the eye of the person" do
			expect(person.eye_color).to eq 'blue'
		end

		it "add the color of the hair of the person" do
			expect(person.hair_color).to eq 'black'
		end

		it "add the pets of the person" do
			expect(person.pets).to include 'Jim'
		end

		it "add the pets of the person" do
			expect(person.pets).to include 'kate'
		end

		it "return the weight of stones" do
			expect(person.stones).to eq 1117.6
		end
		it "say Hi to the other guys" do

			a = person3
			expect(person.greet_people('hi', person3)).to eq 'Hi peter'	
		end


	end

	describe '#person2' do
		person2 = Person.new("Joe", 12313, "black", ['Jim', 'kate'])

		it 'add the weight of the person2' do
			expect(person2.weight).to eq 78
		end

		it 'add the height of the person2' do
			expect(person2.height).to eq 178
		end
	end
end