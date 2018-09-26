class Genre 
  attr_accessor :name
 
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs 
    Song.all{|song| song.genre == self}
  end
  
  def artists
    songs.collect(&:artist)
  end
  
  def add_song(song)
    songs << song
  end
end