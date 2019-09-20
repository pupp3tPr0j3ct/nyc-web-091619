class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  # - Get a list of all the memberships that a specific lifter has
  def memberships
    # Get a list of all the memberships
    Membership.all.select do |membership|
      # self
      # binding.pry
      membership.lifter == self
    end
  end

  # Get a list of all the gyms that a specific lifter has memberships to
  def my_gyms
    # Go through all MY  memberships
    memberships.map do |membership|
      # return a list of the gyms in MY memberships
      membership.gym
    end
  end

# Class
# avg_lift_total
  def self.avg_lift_total
    # Look through all the lifters -- Lifter.all.each do |lifter|
    lift_total_numbers = Lifter.all.map do |lifter|
      lifter.lift_total
    end

    # Add together all their lift numbers  lifter.lift_total
    total_of_all_the_lifts = lift_total_numbers.inject do |sum, n|
      sum + n
    end

    # divide by the number of lifters  /Lifter.all.count
    total_of_all_the_lifts/Lifter.all.count

  end



 #  - Given a gym and a membership cost, sign a specific lifter up for a new gym
 # instance
   def sign_me_up(gym, membership_cost)
     Membership.new(self, gym, membership_cost)
   end



end # end of the Lifter Class
