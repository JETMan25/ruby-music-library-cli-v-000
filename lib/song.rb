class Song 
  
attr_accessor :name
attr_reader :artist 
@@all = []

  def initialize(name, artist = nil) 
    @name = name
    self.artist=(artist) if artist 
    
  end

  def self.all
    @@all
  end 
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end 
  
  def self.destroy_all
   @@all.clear
 end
 
  def save 
    self.class.all << self 
  end
  
  def self.create(name)
    song = self.new(name)
    self.all << song
    song
  end
  
end
