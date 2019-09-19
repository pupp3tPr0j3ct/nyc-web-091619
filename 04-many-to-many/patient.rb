

class Patient

    attr_reader :name, :age
    attr_accessor :gender, :insurance

    @@all = []

  def initialize(name,age,gender,insurance)
    @name = name
    @age = age
    @gender = gender
    @insurance = insurance
    @@all << self
  end

  def self.all
    @@all
  end

  def my_doctors
    # look at all my appoints ,then pull the doctors from all my appoints
    my_appointments = Appointment.all.select do |appointment|
      #  I am the patient in the appointment
      appointment.patient == self
    end

    my_appointments.map do |appointment|
      appointment.doctor
    end
  end


end #end Patient class
