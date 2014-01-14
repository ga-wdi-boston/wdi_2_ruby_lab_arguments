class Pet
  attr_reader :name, :species

  def initialize(name, species = ['cat', 'dog', 'bunny wearing backpack'].sample)
    @name = name
    @species = species
  end
end
