require 'spec_helper'
require_relative "../lib/person.rb"

describe Person do
	describe '#initialize' do
		it 'assigns the person attibutes' do
			new_person = Person.new("Gretchen","67", "130", "60", "brown", "black", ["cow", "aardvark"])
				expect(new_person.name).to eq 'Gretchen'
    end
	end
end

describe Person do
	describe '#initialize' do
			it 'assigns the person attibutes' do
				new_person1 = Person.new("Alice","7", "30", "6", "brown", "black", ["lizard"])
	   			expect(new_person1.age).to eq '7'
		end
	end
end

describe Person do
	describe '#initialize' do
			it 'assigns the person attibutes' do
				new_person2 = Person.new("Edith","97", "40", "600", "brown", "black", ["parrot"])
	   			expect(new_person2.weight).to eq '40'
		end
	end
end

describe Person do
	describe '#initialize' do
			it 'assigns the person attibutes' do
				new_person3 = Person.new("Rita","2", "5", "6", "brown", "black", ["bear"])
	   			expect(new_person3.height).to eq '6'
		end
	end
end

describe Person do
	describe '#initialize' do
			it 'assigns the person attibutes' do
				new_person4 = Person.new("Simone","1", "2", "3", "brown", "black", ["badger", "eel"])
	   			expect(new_person4.eye_color).to eq 'brown'
		end
	end
end

describe Person do
	describe '#initialize' do
		it 'assigned the person attributes' do
			new_person5 = Person.new("Addison","2", "3", "4", "brown", "black", ["bobcat"])
				expect(new_person5.hair_color).to eq 'black'
		end
	end
end

describe Person do
	describe '#initialize' do
		it 'assigned the person attributes' do
			new_person6 = Person.new("Mercedes","9", "10", "11", "brown", "black", ["dragon", "whale"])
				expect(new_person6.pets).to eq 'dragon, whale'
		end
	end
end

describe Person do
	describe '#stones' do
		it 'calculates weight in stones' do
			new_person7 = Person.new("Roberta", "3", "25", "7", "brown", "black", ["cheetah", "alligator"])
				expect(new_person7.weight_in_stones).to eq '158.75'
		end
	end
end

describe Person do
	describe '#greeting' do
		it 'greets people' do
			new_person8 = Person.new("Roger", "3", "25", "7", "brown", "black", ["cheetah", "alligator"])
				expect(new_person8.greeting).to eq 'Hi Roger'
		end
	end
end