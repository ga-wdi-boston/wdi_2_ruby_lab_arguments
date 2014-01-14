class Pet
  attr_reader :name, :species, :claws, :teeth, :backpacks

  def initialize(name, options = {})
    @name = name
    @species = options[:species] || ['cat', 'dog', 'bunny wearing backpack'].sample
    @claws = options[:claws]
    @teeth = options[:teeth]
    @backpacks = options[:backpacks]
  end
end
