class Pet
	attr_accessor :name, :species, :claws, :teeth, :backpacks

	# Creates instance with required name hash of optional parameters
	def initialize(name, options = {})
		@name = name
		@species = options[:species] || ['cat', 'dog', 'bunny wearing backpack'].sample
		@claws = options[:claws]
		@teeth = options[:teeth]
		@backpacks = options[:backpacks]
	end

end