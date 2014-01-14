class Pet
  attr_accessor :name, :species

  def initialize(name, options = {})
    @name = name
    @species = options[:species]
  end
end
