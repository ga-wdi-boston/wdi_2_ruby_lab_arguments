require 'spec_helper'
require_relative '../lib/person'

describe Person do
	it 'includes all options if all are specified' do
 		person1 = Person.new("Bob", :age => 34, :weight => 80, :height => 175, :eye_color => "blue", :hair_color => "blonde", :pets => 6)

 		expect(person1.name).to eq "Bob"
 		expect(person1.age).to eq 34
 		expect(person1.weight).to eq 80
 		expect(person1.height).to eq 175
 		expect(person1.eye_color).to eq "blue"
 		expect(person1.hair_color).to eq "blonde"
 		expect(person1.pets).to eq [6]
 	end

 	it 'includes age of 0 if not specified' do
 		person1 = Person.new("Bob", :weight => 80, :height => 175, :eye_color => "blue", :hair_color => "blonde", :pets => 6)

 		expect(person1.age).to eq 0
 	end

 	it 'includes random weight if not specified' do
 		person1 = Person.new("Bob", :age => 34, :height => 175, :eye_color => "blue", :hair_color => "blonde", :pets => 6)

 		expect([60..100]).to include person1.weight
 	end

 	it 'includes random height if not specified' do
 		person1 = Person.new("Bob", :age => 34, :weight => 80, :eye_color => "blue", :hair_color => "blonde", :pets => 6)

 		expect([150..200]).to include person1.height
 	end

 	it 'includes no specified eye color' do
 		person1 = Person.new("Bob", :age => 34, :weight => 80, :height => 175, :hair_color => "blonde", :pets => 6)

 		expect(person1.eye_color).to eq nil
 	end

 	it 'includes no specified hair color' do
 		person1 = Person.new("Bob", :age => 34, :weight => 80, :height => 175, :eye_color => "blue", :pets => 6)

 		expect(person1.hair_color).to eq nil
 	end

 	# it '#stones' do
 	# 	person7 = Person.new("Joaquin", 56, 67, 164, "blue", "gray", 6)

 	# 	expect(person7.stones).to eq 10.550691
 	# end
end
