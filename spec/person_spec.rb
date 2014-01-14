require 'spec_helper'
require_relative '../lib/person'

describe Person do
	describe '#initialize' do
		it 'assign the person attributes' do
			person = Person.new('Jim', {:age =>'100000days', :weights => '70kg', :height => '175cm', :eye_color =>'black', :hair_color =>'brown'}, 'kim', 'tom')
			expect(person.age).to eq '100000days'
			expect(person.weights).to eq '70kg'
			expect(person.height).to eq '175cm'
			expect(person.eye_color).to eq 'black'
			expect(person.hair_color).to eq 'brown'
			expect(person.pets).to eq ['kim', 'tom']
		end
		it 'should assign 0 day to age if no assign' do
			person2 = Person.new('Tom', { :weights => '70kg', :height => '175cm', :eye_color =>'black', :hair_color =>'brown'}, 'kim', 'tom')
			expect(person2.age).to eq '0day'
		end
		it 'should assign random weights between 10kg to 60kg' do
			person3 = Person.new('Jim', {:age =>'100000days', :height => '175cm', :eye_color =>'black', :hair_color =>'brown'}, 'kim', 'tom')
			expect(person3.weights.to_i).to be >= 10 
			expect(person3.weights.to_i).to be <= 60
		end
		it 'should assign random height between 150cm to 200cm' do
		person4 = Person.new('Jim', {:age =>'100000days', :weights => '70kg', :eye_color =>'black', :hair_color =>'brown'}, 'kim', 'tom')
		expect(person4.height.to_i).to be >= 150 
		expect(person4.height.to_i).to be <= 200
		end
	end
	describe '#weight_to_stone' do
		it 'should return the correct value of the weight_to_stone' do
			person5 = Person.new('Jim', {:age =>'100000days', :weights => '70kg', :height => '175cm', :eye_color =>'black', :hair_color =>'brown'}, 'kim', 'tom')
			expect(person5.weight_to_stone).to eq 444.5
		end
	end
	describe '#greeting_people' do
		it 'should greeting each people' do
			person6 = Person.new('Jim', {:age =>'100000days', :weights => '70kg', :height => '175cm', :eye_color =>'black', :hair_color =>'brown'}, 'kim', 'tom')
			person7 = Person.new('Tom', { :weights => '70kg', :height => '175cm', :eye_color =>'black', :hair_color =>'brown'}, 'kim', 'tom')
			person8 = Person.new('Jim', {:age =>'100000days', :height => '175cm', :eye_color =>'black', :hair_color =>'brown'}, 'kim', 'tom')
			expect(person6.greeting_people({}, person7, person8)).to be ['Hi Tom', 'Hi Jim']
		end
	end
end
