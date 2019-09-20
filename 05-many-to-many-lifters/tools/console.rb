# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

evans = Lifter.new('ekans', 9001)
bulba = Lifter.new('bulbasaur', 20)
biff = Lifter.new('biff', 350)
planet_fitness = Gym.new('planet fitness :)')
blink = Gym.new('bring your friend for free')
equinoix = Gym.new('Equinox')
ms1 = Membership.new(evans, planet_fitness,10)
ms2 = Membership.new(bulba, blink, 25)
ms3 = Membership.new(biff, planet_fitness, 2500)
ms4 = Membership.new(evans, equinoix, 2500)



binding.pry

puts "Gains!"
