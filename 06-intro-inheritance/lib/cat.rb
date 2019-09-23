class Cat < Animal
  include Mammal
  # prepend Mammal

  # attr_reader :name
  attr_accessor :number_of_lives
  
  def initialize(name, number_of_lives = 9)
    # binding.pry
    super(name)
    # @name = name
    # @mood = 'nervous'
    # binding.pry
    @number_of_lives = number_of_lives
  end

  def meow
    puts 'meow'
  end
end