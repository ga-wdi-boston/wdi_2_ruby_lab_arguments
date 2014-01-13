class Person
  attr_accessor :name, :age, :weight, :height, :eye_color, :hair_color, :pets

  def initialize(name, eye_color='', hair_color='', age=0, weight=rand(60..100), height=rand(150..200), *pets)
    @name = name
    @age = age
    @weight = weight
    @height = height
    @eye_color = eye_color
    @hair_color = hair_color
    @pets = pets
  end

  def greet(greeting='Hi', *people)
     if people.each { |person| return "#{greeting} #{person}"} == []
      return greeting
    else
      people.each { |person| return "#{greeting} #{person}"}
    end
  end
end


# Testing

# person = Person.new('Jordan', 160, '5ft 10in', 'brown', 'brown', 31, 'Rosie', 'Puppy')

# puts person.pets


# person = Person.new('Jordan', 160, 'brown', 'brown', 10, 10, 'Rosie', 'Puppy')

# puts person.height

person = Person.new('Jordan', 'brown', 'brown')

puts person.age
puts person.height

puts person.weight

person.greet('hello', 'bob')
