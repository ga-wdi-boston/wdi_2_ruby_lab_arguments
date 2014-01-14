class Pet
  attr_accessor :name, :species, :num_claws, :num_teeth, :num_backpacks
# Defined the initialize method, with only a name argument required
  def initialize(name, species=['cat', 'dog', 'bunny wearing backpack'].sample, options = {})
    @name = name
    @species = species
    @num_teeth = options[:num_teeth]
    @num_claws = options[:num_claws]
    @num_backpacks = options[:num_backpacks]
  end
end
