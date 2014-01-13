class Pet
	@@spec = ['dog', 'cat', 'bunny wearing backpack'][rand(3)]
	attr_accessor :name, :species, :num_of_claw, :num_of_teeth, :num_of_backpack
	
	def random_species
		species_option = ['dog', 'cat', 'bunny wearing backpack']
		species = species_option[rand(3)]
	end

	def initialize(name, species = @@spec, num_of_claw, num_of_teeth, num_of_backpack)
		@name = name
		@species = species
		@num_of_claw = num_of_claw
		@num_of_teeth = num_of_teeth
		@num_of_backpack = num_of_backpack
	end
end
