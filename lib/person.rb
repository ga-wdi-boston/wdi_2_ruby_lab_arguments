class Person
  attr_accessor :name, :age, :weight, :height
  def initialize(name, age=nil, weight=nil, height=nil, eye_color=nil, hair_color=nil, pets=[])
    @name = name
    @age = 0
    @weight ||= rand(60..100)
    @height ||= rand(150..200)
    @eye_color = eye_color
    @hair_color = hair_color
    @pets = pets
  end
  def stones
    0.157473 * @weight
  end
  def greet(options)
    options[:greeting] ||= "hi"
    others = []
    options[:people].each do |person|
      others << person.name
    end
      return "#{options[:greeting]}, #{others.join(", ")}"
    end
  end
end