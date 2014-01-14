class Person
  attr_accessor :name, :age, :weight, :height, :eye_color, :hair_color, :pets

  def initialize (name, age, weight, height, pets, options = {})
    @name = name
    @age = age
    @weight = (60..100)
    @height = (150..200)
    @pets = *pets
    @eye_color = options[:eye_color]
    @hair_color = options[:hair_color]
  end

  def to_stones
   (@weight / 6.35)
  end

  # def greet(*names, greeting)
  #  names.each {|name| puts '"#{greeting}" *names.'}
  # end
end
