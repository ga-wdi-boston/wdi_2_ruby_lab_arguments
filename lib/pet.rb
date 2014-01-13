require 'pry'

class Pet

	attr_accessor :name, :species, :number_of_claws, :number_of_teeth, :number_of_backpacks, :options

	def initialize(name, options = {})
		@name = name
		@species = options[:species] || ['cat', 'dog', 'bunny wearing backpack'].sample
		@number_of_claws = options[:claws]
		@number_of_teeth = options[:teeth]
		@number_of_backpacks = options[:backpacks]
		@options
		#binding.pry

	end

	def name_set?
		!@name.empty?
	end

	def species_set?
		!@species.empty?
	end


end
