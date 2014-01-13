require 'spec_helper'
require_relative '../lib/person'

describe Person do
  describe '#initialize' do
    it 'returns an array for pets using splat' do
      person = Person.new('Jordan', 'brown', 'brown', 160, 31, 200, 'Rosie', 'Puppy')
      expect(person.pets.class).to eq Array
    end

    person = Person.new('Jordan', 'brown', 'brown')
    it 'returns 0 for age if none is provided' do
      expect(person.age).to eq 0
    end

    it 'returns a number between 150 and 200 for height if none specified' do
      expect(150..200).to include person.height
    end

    it 'returns a default for weight between 60-100' do
      expect(60..100).to include person.weight
    end

    person = Person.new('Jordan')
    it 'returns a default empty string for eye_color and hair_color' do
      expect(person.eye_color).to eq ''
      expect(person.hair_color).to eq ''
    end
  end

  describe '#greet' do
    person = Person.new('Jordan')
    expect(person.greet). to eq 'Hi'
  end

end
