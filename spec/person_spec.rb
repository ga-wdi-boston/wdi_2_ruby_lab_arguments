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
        ['cat'],
        eye_color: "hazel",
        hair_color: "blond"
        )
      expect(new_person.name).to eq 'Gavin'
      expect(new_person.age).to eq 40
      expect([60..100]).to include new_person.weight
      expect([150..200]).to include new_person.height
      expect(new_person.pets).to eq ['cat']
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
        ['dog','cat'],
        eye_color: "green"
        )
      expect(new_person1.name).to eq 'Greg'
      expect(new_person1.age).to eq 44
      expect(new_person1.pets).to eq ['dog','cat']
      expect([60..100]).to include new_person1.weight
      expect([150..200]).to include new_person1.height
  end

  describe '#to_stones' do
    it 'converts weight from kg to stones' do
      new_person2 = Person.new('Gary', 35, 60, 150, ['cat'])
      new_person2.weight = 60
      expect(new_person2.to_stones).to eq 9.448818897637796
    end
  end

  # describe '#greet' do
  #   it 'allows people to greet people objects' do
  #     new_persona = Person.new('Gary', 35, 60, 150, ['cat'])
  #     new_personb = Person.new('Joe', 35, 60, 150, ['cat'])
  #     new_personc = Person.new('Jim', 35, 60, 150, ['cat'])
  #     new_persond = Person.new('Josh', 35, 60, 150, ['cat'])
  #     *names = [new_personb.name, new_personc.name, new_persond.name]
  #     expect(new_persona.greet(*names, "Hello, ")).to eq "Hello, Joe."
  #   end
  # end
end
