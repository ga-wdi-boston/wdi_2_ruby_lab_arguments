#You should be able to create a new Pet. The pet must be supplied a name. They have a randomly set default 'species' of "cat", "dog" or "bunny wearing backpack", which can be overridden with an argument. Optionally, they can be given a number of claws, number of teeth, number of backpacks.

require 'spec_helper'
require_relative '../pet.rb'

describe Pet do

	it "Creates a new pet with a specified name" do
		testpet1 = Pet.new("Ajax")
		expect(testpet1.name).to eq "Ajax"
	end

	it "Can take a species as a parameter" do
		testpet2 = Pet.new("Ajax", "dog")
		expect(testpet2.species).to eq "dog"
	end

	it "Randomly assigns a species if none is given" do
		testpet3 = Pet.new("Wolfenstein")
		expect(['cat', 'dog', 'bunny with backpack']).to include testpet3.species
	end

	it "Can take take number of claws, number of teeth, and number of backpacks" do
	testpet4 = Pet.new("Roger", "cat", 4, 22, 4)
	expect(testpet4.output).to eq "I am a cat named Roger. I have 4 claws, 22 teeth, and 4 backpacks"
	end

end
