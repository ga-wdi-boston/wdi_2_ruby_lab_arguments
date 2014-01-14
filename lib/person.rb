class Person
  attr_accessor :name, :age, :weight, :height, :eye_color, :hair_color, :pets
  def initialize(name, options={})
    #age=nil, weight=nil, height=nil, eye_color=nil, hair_color=nil, pets=[])
    @name = name
    @age = options[:age] || 0
    @weight = options[:weight] || rand(60..100)
    @height = options[:heihgt] || rand(150..200)
    @eye_color = options[:eye_color]
    @hair_color = options[:hair_color]
    @pets = options[:pets]
  end

  def stones
    0.157473 * @weight
  end

  def greet(options)
    options[:greeting] ||= "Hi" # Default greeting
    peeps = []
    options[:people].each do |person|
      peeps << person.name
    end
    return "#{options[:greeting]}, #{peeps.join(", ")}"
  end
end
