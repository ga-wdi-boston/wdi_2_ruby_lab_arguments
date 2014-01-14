class Person
  attr_reader :name, :age, :weight, :height, :eye_color, :hair_color, :pets

  def initialize(name, options = {})
    @name = name
    @age = options[:age] || 0
    @weight = options[:weight] || rand(60..100)
    @height = options[:height] || rand(150..200)
    @eye_color = options[:eye_color]
    @hair_color = options[:hair_color]
    @pets = options[:pets] || []
  end

  def weight_in_stone
    @weight / 6.35
  end
end
