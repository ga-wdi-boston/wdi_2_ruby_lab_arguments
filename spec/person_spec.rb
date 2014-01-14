require 'spec_helper'
require_relative '../lib/person'

describe Person do
  describe '#initialize' do
    it 'creates a person with a name' do
      new_person = Person.new('Laure')
      expect(new_person.name).to eq 'Laure'
    end

    it 'creates a person with age, weight, height, eye color, hair color, and pets array' do
      pets = ['Spot', 'Boomer']
      new_person = Person.new('Laure', age: 24, weight: 130, height: 63, eye_color: 'blue', hair_color: 'blonde', pets: pets)
      expect(new_person.age).to eq 24
      expect(new_person.weight).to eq 130
      expect(new_person.height).to eq 63
      expect(new_person.eye_color).to eq 'blue'
      expect(new_person.hair_color).to eq 'blonde'
      expect(new_person.pets).to eq pets
    end

    it 'creates a person with default age, weight, height if none are provided' do
      pets = ['Spot', 'Boomer']
      new_person = Person.new('Laure', pets: pets)
      expect(new_person.age).to eq 0
      expect(60..100).to include new_person.weight
      expect(150..200).to include new_person.height
    end
  end

  describe '#stones_weight' do
    it 'returns a persons weight in stones' do
      new_person = Person.new('Laure', weight: 635)
      expect(new_person.stones_weight).to eq (new_person.weight / 63.5)
    end
  end

  describe '#greeting' do
    it 'allows a person to greet people with the greeting of Hi' do
      new_person = Person.new('Laure')
      other_person_1 = Person.new('Jeff')
      other_person_2 = Person.new('Steve')
      other_person_3 = Person.new('Linda')
      expect(new_person.greeting('Hi', other_person_1)).to eq ['Hi Jeff']
      expect(new_person).greeting('Hi', other_person_2)).to eq ['Hi Steve'] #Left off here
    end
  end
end
