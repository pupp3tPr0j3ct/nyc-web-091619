require 'pry'

class Squirrel

  attr_reader :name, :size, :color, :flying
  attr_accessor :flying

  @@all = []

  def initialize(color, name, size, flying=false)
    @color = color
    @name = name
    @size = size
    @flying = flying
    @my_nests
    @@all << self
  end

  # def flying=(arg)
  #   binding.pry
  #   @flying = arg
  # end


  def learn_to_fly
    if flying == false
      self.flying = true
    end
  end

  def self.all
    # a collection of all squirrels
    @@all
  end

  def my_nests
    # look through ALL of the nests
    Nest.all.select do |nest|
      # which one of those are mine
      nest.squirrel == self
      # binding.pry
    end
  end

  def comfy_nests
    # look through all of MY NESTS and figure which one is comfy

    # SELECT the ones where the nest IF nest.comfy is true 
  end




end # end Squirrel class

# s1.my_nests


# create a instance method called name - we should be able to see a Squirrel's name

# create a method named size -- returns that particular s'szz size

# create a method named learn_to_fly which checks if a Squirrel can fly and if it cannae then make it learn


# create a method to see all of the squirrels :)


# SCOPE should it be CLASS || Instance?



# s1.yeet
