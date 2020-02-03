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
  
  def self.new_by_name(name)
    temp_song = self.new 
    temp_song.name = name
    return temp_song
  end
  
  def self.create_by_name(name)
    temp_song = self.new 
    temp_song.name = name
    @@all << temp_song
    return temp_song
  end
  
  def self.find_by_name(name)
    @@all.each do |song|
      if song.name == name
        return song
      end
    end
    return nil
  end
end

