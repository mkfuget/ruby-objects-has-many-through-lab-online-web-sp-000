class Artist 
  
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all.push(self)
  end 
  
  def self.all 
    return @@all 
  end 
  
  def songs 
    return Song.all.select{|song| song.artist == self} 
  end
  
  def genres 
    return songs.map{|song| song.genre}
  end
  
  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end 
  
end