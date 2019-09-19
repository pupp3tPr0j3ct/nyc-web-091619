require "pry"
require_relative "./doctor"
require_relative "./patient"
require_relative "./appointment"


d1 = Doctor.new("ka", "cardio" , "MD")
d2 = Doctor.new("doogie", "neuro" , "MD")
d3 = Doctor.new("doolittle", "pets" , "MD")

p1 = Patient.new("evans", 8 , "male", false)
p2 = Patient.new("chett", 9001 , "male", true)
p3 = Patient.new("vera", 5 , "female", true)

appoint1 = Appointment.new(p1, d3, 10)
appoint2 = Appointment.new(p1, d2, 11)
appoint3 = Appointment.new(p2, d3, 10)
appoint4 = Appointment.new(p3, d3, 10)

binding.pry

# Doctor should know all their patients



# Patient should see all their doctor
# Patient should see if they have seen a podiatrist

#  doctor should see a list of all of their patients who identify as male




binding.pry
