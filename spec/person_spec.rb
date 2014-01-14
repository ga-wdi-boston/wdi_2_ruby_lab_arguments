
require 'spec_helper'
require_relative '../person.rb'

describe Person do

	it "creates a new person with a specified name" do
		person1 = Person.new("Paul")
		expect(person1.name).to eq "Paul"
	end

	it "initializes a person with random height/weight if none is given" do
		person2 = Person.new("Joe")
		expect(person2.height).to be >= 150
		expect(person2.height).to be <= 200
		expect(person2.weight).to be >= 60
		expect(person2.weight).to be <= 100
	end

	it "returns the person's weight in stone" do
		person3 = Person.new("Tim", 29, 81, 170)
		expect(person3.weight_in_stone).to eq 12.755313000000001
	end

	it "greets any number of other people" do
		person4 = Person.new("Hal")
		person5 = Person.new("Jamie")
		person6 = Person.new("Steve-O")
		expect(person4.greet(person4, person5, person6)).to eq ["Hi Hal.", "Hi Jamie.", "Hi Steve-O."]
	end

end
