class Pet
	attr_accessor :name, :species, :number_of_claws, :number_of_teeth, :number_of_backpacks

	def initialize(name, species = nil, number_of_claws = nil, number_of_teeth = nil, number_of_backpacks = nil)

		# name is set by argument only
		@name = name

		# species is set by default or argument
		if species.nil?
			@species = ["cat", "dog", "bunny wearing backpack"][rand(0..2)]
		else
			@species = species
		end

		@number_of_claws = number_of_claws
		@number_of_teeth = number_of_teeth
		@number_of_backpacks = number_of_backpacks

	end

end
