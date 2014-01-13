class Pet
  attr_accessor :name, :species, :claws, :teeth, :backpack
  def initialize(name, options={})
    @name = name
    @species = options[:species] ||
      ["cat", "dog", "bunny wearing backpack"][rand(0..2)]
    @claws = options[:claws]
    @teeth = options[:teeth]
    @backpack = options[:backpack]
  end
end
