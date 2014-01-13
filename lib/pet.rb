class Pet
	attr_accessor :name, :species, :num_teeth, :num_claws, :num_backpacks
	def initialize(name, options={num_teeth: 0, num_claws: 0, num_backpacks: 0})
		@name = name
		@species = options[:species] || ['cat', 'dog', 'bunny wearing backpack'].sample
		@num_teeth = options[:num_teeth]
		@num_claws = options[:num_claws]
		@num_backpacks = options[:num_backpacks]
	end
end
