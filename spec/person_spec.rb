require 'spec_helper'
require_relative "../lib/person"

describe Person do
	before(:each) do
		@test_person_1 = Person.new("Jan", 1, 27, :eye_color => "brown", :hair_color => "black", :weight => 64 , :height => 158)
		@test_person_2 = Person.new("Jenny", 4, )
		@test_person_3 = Person.new("Peter", 1, 26, :weight => 70)
		# @test_person_4 = Person.new("Alvin",1, :weight => 70)
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

		it 'initialize a new person instance, check age' do
			expect(@test_person_1.age).to eq 27
			expect(@test_person_2.age).to eq 0
			# expect(@test_person_4.age).to eq 0
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

	describe '#weight_in_stones' do
		it 'converts weight from kg to stones' do
			expect(@test_person_1.weight_in_stones).to eq 10.095808
			expect(@test_person_3.weight_in_stones).to eq 11.04229
		end
	end

	describe '#greeting_people_objects' do
		it 'greets people objects' do
			expect(@test_person_1.greeting_people_objects(:greeting => "Hola", :people => [@test_person_2.name, @test_person_3.name])).to eq "Hola Jenny Hola Peter "
		end
	end
end










