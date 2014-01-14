#You should be able to create a new Pet. The pet must be supplied a name. They have a randomly set default 'species' of "cat", "dog" or "bunny wearing backpack", which can be overridden with an argument. Optionally, they can be given a number of claws, number of teeth, number of backpacks.



class Pet

	attr_accessor :name, :species, :num_claws, :num_teeth, :num_backpacks

	def random_species
		species_options = ['cat', 'dog', 'bunny with backpack']
		species_options[rand(2)]
	end

	def initialize(name, species = random_species, num_claws = nil, num_teeth = nil, num_backpacks = nil)
		@name = name
		@species = species
		@num_claws = num_claws
		@num_teeth = num_teeth
		@num_backpacks = num_backpacks
	end

	def output
		"I am a #{@species} named #{@name}. I have #{@num_claws} claws, #{@num_teeth} teeth, and #{@num_backpacks} backpacks"
	end

end

