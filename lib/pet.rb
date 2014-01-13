class Pet
	attr_accessor :name, :species, :num_of_claw, :num_of_teeth, :num_of_backpack
	def initialize(name, species = ["cat", "dog", "bunny wearing backpack"].random, num_of_claw, num_of_teeth, num_of_backpack)
		@name = name
		@species = gets.chomp
		@num_of_claw = num_of_claw
		@num_of_teeth = num_of_teeth
		@num_of_backpack = num_of_backpack
	end
end
