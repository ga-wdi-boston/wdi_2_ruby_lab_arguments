require 'spec_helper'
require_relative "../lib/person"

describe Person do
	before(:each) do
		@test_person_1 = Person.new("Jan", 1, 27, :eye_color => "brown", :hair_color => "black", :weight => 64 , :height => 158)
	end

	describe '#initialize' do
		it 'initialize a new Person instance' do
			expect(@test_person_1).to eq @test_person_1
		end

		it 'initialize a new person instance, check name' do
			expect(@test_person_1.name).to eq "Jan"
		end

		it 'initialize a new person instance, check eye_color' do
			expect(@test_person_1.eye_color).to eq "brown"
		end

		it 'initialize a new person instance, check hair_color' do
			expect(@test_person_1.hair_color).to eq "black"
		end

		it 'initialize a new person instance, check weight' do
			expect(@test_person_1.weight).to eq 64
		end

		it 'initialize a new person instance, check height' do
			expect(@test_person_1.height).to eq 158
		end

		it 'initialize a new person instance, number_of_pets' do
			expect(@test_person_1.number_of_pets).to eq [1]
		end

	end
end

