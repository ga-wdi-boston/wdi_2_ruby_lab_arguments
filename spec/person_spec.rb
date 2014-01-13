require 'spec_helper'
require_relative "../lib/person"

describe Person do
	before(:each) do
		@test_person_1 = Person.new("Jan", 1, 27, :eye_color => "brown", :hair_color => "black", :weight => 64 , :height => 158)
		@test_person_2 = Person.new("Jenny", 4, 25, )

	end

	describe '#initialize' do
		it 'initialize a new Person instance' do
			expect(@test_person_1).to eq @test_person_1
			expect(@test_person_2).to eq @test_person_2
		end

		it 'initialize a new person instance, check name' do
			expect(@test_person_1.name).to eq "Jan"
			expect(@test_person_2.name).to eq "Jenny"
		end

		it 'initialize a new person instance, check eye_color' do
			expect(@test_person_1.eye_color).to eq "brown"
			expect(@test_person_2.eye_color).to eq nil
		end

		it 'initialize a new person instance, check hair_color' do
			expect(@test_person_1.hair_color).to eq "black"
			expect(@test_person_2.hair_color).to eq nil
		end

		it 'initialize a new person instance, check weight' do
			expect(@test_person_1.weight).to eq 64
			expect(60..100).to include @test_person_2.weight
		end

		it 'initialize a new person instance, check height' do
			expect(@test_person_1.height).to eq 158
			expect(150..200).to include @test_person_2.height
		end

		it 'initialize a new person instance, number_of_pets' do
			expect(@test_person_1.number_of_pets).to eq [1]
			expect(@test_person_2.number_of_pets).to eq [4]
		end

	end
end

