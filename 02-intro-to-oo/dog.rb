require 'pry'
class Dog


  attr_reader :breed
  # attr_writer :name, :age
  attr_accessor :name, :age

  @@all_the_doggos = []

  def initialize(name, age, breed, heaven=true)
    @name = name
    @age = age
    @breed = breed
    @@all_the_doggos << self #brand new instance
  end

  def bork
    puts "bork bork bork"
    # binding.pry
    # self # instance of the dog
  end

  def self.all
    @@all_the_doggos
    # self # class Dog
  end

  def self.all_the_barking
    # all the dogs to bark
    # access to all the dogs
    # iterate call .bork

  end

end # End Dog Class



doggo1 = Dog.new('gucci', 9, 'chocolate lab')
doggo2 = Dog.new('chanel', 12, 'yorkie')
doggo3 = Dog.new('rocawear', 15, 'husky')
#
# Dog.new
# Dog.some_class_method
Dog.all

doggo1.bork
doggo2.bork
binding.pry
0
