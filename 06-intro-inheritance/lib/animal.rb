class Animal

  attr_reader :name
  attr_accessor :mood
  
  def initialize(name)
    # self?
    # binding.pry
    @name = name
    @mood = 'nervous'
  end

  def speak
    puts 'YO. I am an animal. Zup?🐠'
  end
  
  # def walk
  #   puts "animal walking"
  # end
end