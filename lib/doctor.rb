class Doctor 
  
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all.push(self)
  end
  
  def appointments
    return Appointment.all.select{|appointment| appointment.doctor == self}
  end 
  
  def self.all 
    return @@all 
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end 
  
  def patients
    return appointments.map{|appointment| appointment.patient}
  end
  
end