require 'spec_helper'
require_relative '../lib/person'

describe Person do
	it 'includes all options if all are specified' do
 		person1 = Person.new("Bob", 34, 80, 175, "blue", "blonde", 6)

 		expect(person1.name).to eq "Bob"
 		expect(person1.age).to eq 34
 		expect([60..100]).to include person1.weight
 		expect([150..200]).to include person1.height
 		expect(person1.eye_color).to eq "blue"
 		expect(person1.hair_color).to eq "blonde"
 		expect(person1.pets).to eq [6]
 	end

 	it 'includes age of 0 if not specified' do
 		person2 = Person.new("Cate", 74, 156, "brown", "brown", 3)

 		expect(person2.age).to eq 0
 	end

 	it 'includes random weight if not specified' do
 		person3 = Person.new("Dirk", 25, 183, "green", "purple", 8)

 		expect([60..100]).to include person3.weight
 	end

 	it 'includes random height if not specified' do
 		person4 = Person.new("Barry", 73, 96, "hazel", "white", 1)

 		expect([150..200]).to include person4.height
 	end

 	it 'includes no specified eye color' do
 		person5 = Person.new("Carol", 15, 61, 152, "", "red", 2)

 		expect(person5.eye_color).to eq ''
 	end

 	it 'includes no specified hair color' do
 		person6 = Person.new("Joe", 35, 81, 192, "violet", "", 5)

 		expect(person6.hair_color).to eq ""
 	end

 	# it '#stones' do
 	# 	person7 = Person.new("Joaquin", 56, 67, 164, "blue", "gray", 6)

 	# 	expect(person7.stones).to eq 10.550691
 	# end
end

describe 'stones' do
  weight = 67

  expect(stones).to eq 10.550691
end
