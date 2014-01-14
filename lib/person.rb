	class  Person

		attr_accessor :name, :age, :weight, :height, :eye_color, :hair_color, :pets

		def initialize(name, age, weight, height, eye_color, hair_color, pets)
				@name = name
				@age  = age || "0 days"
				@weight = weight || (60..100).rand
				@height = height || (150..200).rand
				@eye_color = eye_color || ()
				@hair_color = hair_color || ()
				@pets = []
    end

  def weight_in_stones(weight_in_kg)
  	stone = 6.35
  	convert_stone_to_kg = stone * weight_in_kg
  end

  def greeting (*people)
  	greet_any_number_of_people = *people.each {|person| puts "Hi #{person}"}
   end
end




