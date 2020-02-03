class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create 
    temp_song = self.new 
    @@all << temp_song
    return temp_song
  end
end

