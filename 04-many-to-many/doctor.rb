

class Doctor

    attr_reader :name, :degree
    attr_accessor :speciality

    @@all = []

  def initialize(name,speciality,degree)
    @name = name
    @speciality = speciality
    @degree = degree
    @@all << self
  end

  def self.all
    @@all
  end

  def my_patients
    # Look through all the Appointments
    my_appointments = Appointment.all.select do |appointment|
      #  I am the doctor in the appointment
      appointment.doctor == self

    end

    # binding.pry
    my_appointments.map do |appointment|
      # binding.pry
       appointment.patient

    end

    # ALL OF THOSE appointments who the patient
  end


  def pediatric_patients
    # look through all my patients
    my_patients.select do |patient|
      # check if they are under 18
      patient.age < 18
    end

  end

end #end Doctor class


# see list of patients younger than 18
# instance
# doctor
