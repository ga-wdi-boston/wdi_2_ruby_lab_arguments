
# You should be able to create a new Pet. The pet must be supplied a name.
# They have a randomly set default 'species' of "cat", "dog" or "bunny wearing backpack",
# which can be overridden with an argument.
# Optionally, they can be given a number of claws, number of teeth, number of backpacks.


class Pet
	attr_accessor :name, :species, :number_of_claws, :number_of_teeth, :number_of_backpacks
	def initialize(name, number_of_claws, number_of_teeth, number_of_backpacks, species=["cat", "dog", "bunny wearing backpack"].sample)

		@name = name
		@species = species
		@number_of_claws = number_of_claws
		@number_of_teeth = number_of_teeth
		@number_of_backpacks = number_of_backpacks
	end
end
