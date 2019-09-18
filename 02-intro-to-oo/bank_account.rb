require 'pry'

class BankAccount

  attr_accessor :amt, :int
  attr_reader :type, :owner


  def initialize(amt, type, int=1, owner)
    @amt = amt
    @type = type
    @owner = []
  end

  def deposit(money)
    @amt += money
  end

  def withdraw(withdraw_amt)
    # if ya dont have the money DO NOT WITHDRAW also minus 3 dolla$
    if @amt < withdraw_amt
      @amt -= 3
      puts " ya broke"
    else
      @amt -= withdraw_amt
      puts " do you want reciept?"
    end

  end


end # end BankAccount 🎤


bank1 = BankAccount.new(200, 'checking', 2, "Felix")

binding.pry
