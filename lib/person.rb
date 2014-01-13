class Person
  attr_accessor :name, :age, :weight, :height, :eye_color, :hair_color, :pets

  def initialize(name, age=0, options={})
    @name = name
    @age = age
    @weight = options[:weight] || rand(60..100)
    @height = options[:height] || rand(150..200)
    @eye_color = options[:eye_color] || ''
    @hair_color = options[:hair_color] || ''
    @pets = options[:pets] || []
  end

  def weight_in_stones
    @weight * 0.15747
  end

  def greet(options={})
     greeting = options[:greeting] || 'Hi'
     people = options[:people]
     statement = ''
     people.each { |person| statement << "#{greeting} #{person}. "}
     statement
  end
end


# Testing

# person = Person.new('Jordan', 160, '5ft 10in', 'brown', 'brown', 31, 'Rosie', 'Puppy')

# puts person.pets


# person = Person.new('Jordan', 160, 'brown', 'brown', 10, 10, 'Rosie', 'Puppy')

# puts person.height

# person = Person.new('Jordan')

# puts person.age
# puts person.height

# puts person.weight

# puts person.greet({:people => ['Bob', 'Kelly']})

person = Person.new('Jordan', 31, {weight: 60})
puts person.weight
