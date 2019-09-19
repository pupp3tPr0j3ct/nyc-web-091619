

class Appointment

  attr_reader :patient, :doctor
  attr_accessor :time

  @@all = []

  def initialize(patient, doctor, time)
    @patient = patient
    @doctor = doctor
    @time = time
    @@all << self
  end

  def self.all
    @@all
  end

end #end Appointment class
