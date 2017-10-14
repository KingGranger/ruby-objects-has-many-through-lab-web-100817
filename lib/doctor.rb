class Doctor
  attr_accessor :appointments
  attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self # tells appointment that it belongs to this doctor
  end

  def patients
    @appointments.map {|appointment| appointment.patient}
  end
end
# idea for blog => reminder a class is just a new object in which we are
#creating the methods on to and these methods can be called on when we use
# an 'instance' of that method.
