class Pet
  attr_accessor :name, :species, :teeth, :claws, :backpacks

  @@species_all = %w{dog cat bunny alien}
  @@species = @@species_all[rand(@@species_all.length)]

  def initialize(name, species=@@species, options=Hash.new(0))
    @name = name
    @species = species
    @claws = options[:claws]
    @backpacks = options[:backpacks]
    @teeth = options[:teeth]

  end
end
