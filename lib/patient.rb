class Patient
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def new_appointment(name, date)
    #instance method
    Appointment.new(self, name, date)
  end
  def self.all
    @@all
  end

  def appointments
    #instance method
    Appointment.all.select do |my_appts|
      my_appts.patient == self
    end
  end
  def doctors
    #instance method
    appointments.map do |my_docs|
      my_docs.doctor
  end
end
end
