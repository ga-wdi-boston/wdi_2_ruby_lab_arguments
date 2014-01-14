require 'spec_helper'
require_relative '../lib/person'

describe Person do
end

describe '#initialize' do
  before(:each) do
    @sarah = Person.new("sarah")
  end

  it 'creates an instance of person with a name' do
    expect(@sarah.class).to eq Person
    expect(@sarah.name).to eq "sarah"
  end

  it 'gives age 0 days if not provided' do
    expect(@sarah.age).to eq 0
  end

  it 'gives weight random 60-100kg if not provided' do
    expect(@sarah.weight).to be_within(20).of (80)
  end

  it 'gives height random 150-200cm if not provided' do
    expect(@sarah.height).to be_within(25).of (175)
  end
end

describe '#stones' do
  before(:each) do
    @sarah = Person.new("sarah")
    @sarah.weight = 54

    it 'returns weight in stones' do
      expect(@sarah.stones).to eq 8.503542
    end
  end

  describe '#greeting' do
    before(:each) do
      @jess = Person.new("jess")
      @jake = Person.new("jake")
      @jeff = Person.new("jeff")
      @john = Person.new("john")
    end

    it 'takes Person instances and greets with Hi as default' do
      others = {people: [@jess, @jake, @john]}
      expect(@sarah.greet(others)).to eq "Hi, jess, jake, john"
    end
  end
end