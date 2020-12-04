class Genre 
  
  @@all = []
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all.push(self)
  end 
  
  def self.all 
    return @@all 
  end
  
  def songs 
    return Song.all.select{|song| song.genre == self}
  end 
  
  def artists 
    return songs.collect{|song| song.artist}.uniq 
  end
  
end 