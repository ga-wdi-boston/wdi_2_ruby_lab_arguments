class  Pet

	attr_accessor :pet_name, :pet_species, :number_of_claws, :number_of_teeth

		def initialize(pet_name, pet_species, options_claws = {}, options_teeth ={})
			@pet_name =  pet_name
			@pet_species = pet_species || ["Dog", "Cat", "Bunny wearing backpack"].sample
			@number_of_claws = options_claws[:number_of_claws].to_s
			@number_of_teeth = options_teeth[:number_of_teeth].to_s
	 end
end
