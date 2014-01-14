require 'spec_helper'
require_relative '../lib/person'
require_relative '../lib/pet'

describe Person do
  describe '#initialize' do
    it 'assigns a name' do
      person = Person.new('Dave')

      expect(person.name).to eq 'Dave'
    end

    it 'assigns default values to age, weight, height, eye_color, and hair_color' do
      person = Person.new('Matt')

      expect(person.age).to eq 0
      expect(60..100).to include person.weight
      expect(150..200).to include person.height
      expect(person.eye_color).to be nil
      expect(person.hair_color).to be nil
    end

    it 'assigns provided values for age, weight, height, eye_color, and hair_color' do
      person = Person.new('Mike', age: 27, weight: 80, height: 170, eye_color: 'blue', hair_color: 'brown')

      expect(person.age).to eq 27
      expect(person.weight).to eq 80
      expect(person.height).to eq 170
      expect(person.eye_color).to eq 'blue'
      expect(person.hair_color).to eq 'brown'
    end

    it 'assigns pets to an empty array by default' do
      person = Person.new('Hongyu')

      expect(person.pets).to eq []
    end

    it 'assigns an array of pets' do
      pets = [Pet.new('Poppy'), Pet.new('Bunbun')]
      person = Person.new('Libby', pets: pets)

      expect(person.pets).to match_array pets
    end
  end

  describe '#weight_in_stone' do
    it 'returns the weight in stone' do
      person = Person.new('Mike', weight: 80)

      expect(person.weight_in_stone).to be_within(0.01).of(12.59)
    end
  end

  describe '#greet' do
    it 'greets other people with a default greeting' do
      person = Person.new('Janice')
      people_to_be_greeted = [Person.new('Jordan'), Person.new('Karen')]

      expect(person.greet(people_to_be_greeted)).to eq ['Hi Jordan', 'Hi Karen']
    end

    it 'greets other people with a custom greeting' do
      person = Person.new('Janice')
      people_to_be_greeted = [Person.new('Jordan'), Person.new('Karen')]

      expect(person.greet(people_to_be_greeted, 'Yo')).to eq ['Yo Jordan', 'Yo Karen']
    end
  end
end
