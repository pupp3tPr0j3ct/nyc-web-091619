require 'pry'
class Nest

  attr_reader :location, :comfy, :squirrel

  @@all = []

  def initialize(location, squirrel, comfy=true)
    @location = location
    @squirrel = squirrel
    @@all << self
  end

  def self.all
    @@all
  end

end #end Nest class
