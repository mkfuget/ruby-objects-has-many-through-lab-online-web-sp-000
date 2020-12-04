class Patient 
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all.push(self)
  end
  
  def self.all 
    return @@all 
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end 
  
  def appointments 
    return Appointment.all.collect{|x| x.patient == self}
  end
  
  def doctors
    return appointments.map{ |x| x.doctor}
  end
end