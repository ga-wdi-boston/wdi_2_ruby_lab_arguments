class Pet
  attr_accessor :name
  attr_reader :species
  def initialize(name)
    @name = name
    :species = {
      'cat',
      'dog',
      'bunny with backpack'
    }
  end
end
end