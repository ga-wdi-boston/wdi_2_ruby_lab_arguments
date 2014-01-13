require 'spec_helper'
require_relative '../lib/person'

describe Person do
  describe '#initialize' do
    it 'assigns the person attributes' do
      new_person = Person.new(
        'Gavin',
        40,
        70,
        160,
        'cat',
        eye_color: "hazel",
        hair_color: "blond"
        )
      expect(new_person.name).to eq 'Gavin'
      expect(new_person.age).to eq 40
      expect([60..100]).to include new_person.weight
      expect([150..200]).to include new_person.height
      expect(new_person.eye_color).to eq 'hazel'
      expect(new_person.hair_color).to eq 'blond'
    end
  end

  it 'assigns the person attributes' do
      new_person1 = Person.new(
        'Greg',
        44,
        80,
        190,
        ['dog','cat']
        )
      expect(new_person1.name).to eq 'Greg'
      expect(new_person1.age).to eq 44
      expect([60..100]).to include new_person1.weight
      expect([150..200]).to include new_person1.height
      expect(new_person1.pets).to eq ['dog','cat']
  end


  # describe '#convert' do
  #   it 'converts weight from kg to stones' do
  #     new_person2 = Person.new('Gary', 35, 60, 150, ['cat'])
  #     new_person2.weight = 60
  #     expect(new_person2.weight.convert).to eq 9.44838
  #   end
  # end
end

  # describe '#greet' do
  #   it 'allows people to greet people objects' do

  #   end
  # end

