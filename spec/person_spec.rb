require 'spec_helper'
require_relative '../lib/person'

describe Person do
  describe '#initialize' do
    person = Person.new('Jordan')

    it 'returns an array for pets using splat' do
      expect(person.pets.class).to eq Array
    end

    it 'returns 0 for age if none is provided' do
      expect(person.age).to eq 0
    end

    it 'returns a number between 150 and 200 for height if none specified' do
      expect(150..200).to include person.height
    end

    it 'returns a default for weight between 60-100' do
      expect(60..100).to include person.weight
    end

    it 'returns a default empty string for eye_color and hair_color' do
      expect(person.eye_color).to eq ''
      expect(person.hair_color).to eq ''
    end
  end

  describe '#greet' do
    person = Person.new('Jordan')
    it 'returns a default of Hi' do
      expect(person.greet({:people => ['Bob', 'Kelly']})). to eq 'Hi Bob. Hi Kelly. '
    end

    it 'otherwise it returns greeting specified in options' do
      expect(person.greet({:greeting => 'Why, hello there', :people => ['Bob', 'Kelly']})).to eq 'Why, hello there Bob. Why, hello there Kelly. '
    end
  end

  describe '#weight_in_stones' do
    it 'returns 9.44838 for 60kg person' do
      person = Person.new('Jordan', {weight: 60})
      expect(person.weight_in_stones).to eq 9.44838
    end

  end

end
