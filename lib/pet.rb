class Pet
	attr_accessor :name, :species, :no_of_claws, :no_of_teeth, :no_of_backpacks
	def initialize(name, *species, hash_option)
		@name = name
		@species = species
		@no_of_claws = hash_option[:no_of_claws]
		@no_of_teeth = hash_option[:no_of_teeth]
		@no_of_backpacks = hash_option[:no_of_backpacks]
	end
end
