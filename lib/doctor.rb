class Doctor 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
     appointments.map(&:doctor)
  end
  
  def patients 
    Appointment.all.select{ |patient| appointment.patient == self }
  end
end