require_relative './nest'
require_relative './squirrel'

require 'pry'



s1 = Squirrel.new('red', 'alvin','tiny')
s2 = Squirrel.new('blue', 'simon','tiny')
s3 = Squirrel.new('green', 'theo','tiny')
n1 = Nest.new('new york', s1)
n2 = Nest.new('peru', s1)
n3 = Nest.new('argentina', s2)

# squirrels need to know how many nests they have

binding.pry
