require 'spec_helper'
require_relative '../lib/person.rb'

describe Person do

	describe '#initialize' do

		it 'assigns the the attributes name, age, weight, height, eye_color, hair_color, pets' do

			valid_person = Person.new({:name =>"Annaface", :age => 28, :weight => 80, :height => 170, :eye_color => "blue", :hair_color => "purple", :pets => nil})

			expect(valid_person.name).to eq "Annaface"
			expect(valid_person.age).to eq 28
			expect(valid_person.weight).to eq 80
			expect(valid_person.height).to eq 170
			expect(valid_person.eye_color).to eq "blue"
			expect(valid_person.hair_color).to eq "purple"
			expect(valid_person.pets).to eq nil

			valid_person_2 = Person.new({:name => "Mollyface"})

			expect(valid_person_2.name).to eq "Mollyface"
			expect(valid_person_2.age).to eq 0
			expect(valid_person_2.weight.between?(60,100)).to eq true
			expect(valid_person_2.height.between?(150,200)).to eq true
			expect(valid_person_2.eye_color).to eq nil
			expect(valid_person_2.hair_color).to eq nil
			expect(valid_person_2.pets).to eq nil

			valid_person_3 = Person.new({:name => "Harriet", :pets => ["spot, einstein"], :hair_color => "rainbow", :height => 199})

			expect(valid_person_3.name).to eq "Harriet"
			expect(valid_person_3.age).to eq 0
			expect(valid_person_3.weight.between?(60,100)).to eq true
			expect(valid_person_3.height.between?(150,200)).to eq true
			expect(valid_person_3.eye_color).to eq nil
			expect(valid_person_3.hair_color).to eq "rainbow"
			expect(valid_person_3.pets).to eq ["spot, einstein"]

			end
	end

	describe '#weight_in_stones' do

		it 'calculates the weight in stones' do
			valid_person_3 = Person.new({:name => "Bob", :weight => 70})

			expect(valid_person_3.weight_in_stones).to eq 70*0.157473044418

			valid_person_4 = Person.new({:name => "Peter"})

			expect(valid_person_4.weight_in_stones.between?(60*0.157473044418, 100*0.157473044418)).to eq true
		end
	end

	describe '#greet' do

		it 'greets any number of people-objects with default Hi or custom greeting' do
			valid_person_5 = Person.new({:name => "Malvina"})
			valid_person_6 = Person.new({:name => "Pinocchio"})
			valid_person_7 = Person.new({:name => "Jiminy Cricket"})

			expect(valid_person_7.greet({:people_to_greet => [valid_person_5, valid_person_6], :greeting => "Welcome"})).to eq ["Welcome Malvina", "Welcome Pinocchio"]

			expect(valid_person_5.greet({:people_to_greet => [valid_person_7]})).to eq ["Hi Jiminy Cricket"]

		end

	end

end

# how to test if a thing is included in an array
# expect(["cat", "dog", ..]).to include some_value
