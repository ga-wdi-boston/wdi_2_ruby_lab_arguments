class Person
  attr_accessor :name, :age, :weight, :height, :eye_color, :hair_color, :pets
# Defined the initialize method, with only a name argument required
  def initialize(name, options = {})
    @name = name
    @age = options[:age] || @age = 0
    @weight = options[:weight] || @weight = rand(60..100)
    @height = options[:height] || @height = rand(150..200)
    @eye_color = options[:eye_color]
    @hair_color = options[:hair_color]
    @pets = options[:pets]
  end
# Defined method to convert kg into stones
  def stones_weight
    @weight / 63.5
  end
# Defined method to allow a person to greet others
  #def greeting (message = 'Hi', *people)
    #people.map { |person| "#{message} #{person.name}" } # Each returns the original array, doesn't do anything with the code in the block
  #end
#end

  def greeting (message = 'Hi', people = {})
    people[:list].map { |person| "#{message} #{person.name}" }
  end
end
