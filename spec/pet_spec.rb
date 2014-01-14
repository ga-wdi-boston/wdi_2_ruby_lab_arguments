require 'spec_helper'
require_relative '../lib/pet'

describe Pet do
  describe '#initialize' do
    before(:all) do
      @gus = Pet.new("Gus")
    end

    it 'creates an instance of a pet with a name' do
      expect(@gus.name).to eq "Gus"
    end

    it 'assigns a random species if not specified' do
      expect(["cat", "dog", "bunny wearing backpack"]).to include @gus.species
    end

    it 'species can be overriden' do
      @override = Pet.new("Amis", {species: "Guinea Pig"})
      expect(@override.species).to eq "Guinea Pig"
    end

    it 'allows claws, teeth, backpacks' do
      @dangerous = Pet.new("Sharky", {claws: 5, teeth: 500, backpack: 50})
      expect(@dangerous.claws).to eq 5
      expect(@dangerous.teeth).to eq 500
      expect(@dangerous.backpack).to eq 50
    end
  end
end
