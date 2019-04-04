class Doctor
  attr_accessor :name, :patient


  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def new_appointment(patient, date)
    #instance method
    Appointment.new(patient, self, date)
  end

  def appointments
    #instance method
    Appointment.all.select do |appt|
    appt.doctor == self
  end
end
  def patients
    #instance
    appointments.map do |pat|
    pat.patient
  end
end
end
