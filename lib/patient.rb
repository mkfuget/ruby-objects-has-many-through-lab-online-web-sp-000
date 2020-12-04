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
    return Appointment.all.select{|x| x.patient == self}
  end
  
  def doctors
    appointments.each{|x| puts x.doctor}
    return appointments.map{ |x| x.doctor}
  end
end