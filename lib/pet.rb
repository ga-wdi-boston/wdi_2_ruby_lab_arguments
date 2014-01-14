class Pet
	attr_accessor :name, :species, :claws, :teeth, :backpacks


	def initialize(name, species, claws, teeth, backpacks)
		@name = name
		@species = ['dog', 'cat', 'bunny wearing backpack'].sample
		@claws = claws
		@teeth = teeth
		@backpacks = backpacks
	end
end
