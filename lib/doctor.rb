class Doctor
  attr_accessor :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end
  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect {|current_appointment| current_appointment.patient}
  end 
end
