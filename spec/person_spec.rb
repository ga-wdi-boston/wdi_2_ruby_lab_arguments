require 'spec_helper'
require_relative '../lib/person'

describe Person do
  describe '#initialize' do
    before(:each) do
      @prescott = Person.new("Prescott")
    end

    it 'creates an instance of person with a name' do
      expect(@prescott.class).to eq Person
      expect(@prescott.name).to eq "Prescott"
    end

    it 'gives age 0 days if not provided' do
      expect(@prescott.age).to eq 0
    end

    it 'gives weight random 60-100kg if not provided' do
      expect(@prescott.weight).to be_within(20).of (80)
    end

    it 'gives height random 150-200cm if not provided' do
      expect(@prescott.height).to be_within(25).of (175)
    end
  end

  describe '#stones' do
    before(:each) do
      @prescott = Person.new("Prescott")
      @prescott.weight = 75
    end

    it 'returns weight in stones' do
      expect(@prescott.stones).to eq 11.810475
    end
  end

  describe '#greeting' do
    before(:each) do
      @prescott = Person.new("Prescott")
      @david = Person.new("David")
      @alex = Person.new("Alex")
      @tom = Person.new("Tom")
    end

    it 'takes Person instances and greets with Hi as default' do
      peeps = {people: [@david, @alex, @tom]}
      expect(@prescott.greet(peeps)).to eq "Hi, David, Alex, Tom"
    end
  end

end
