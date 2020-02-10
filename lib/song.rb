class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all()
    @@all
  end

  def self.find_by_name(song_name)
    return @@all.find{|song| song.name == song_name}
  end

  def save()
    self.class.all << self
  end
  
  def self.create()
    new_song = Song.new
    new_song.save
    return new_song
  end
  
  def self.new_by_name(song_name)
    new_song = Song.new
    new_song.name = song_name
    return new_song
  end
  
  def self.create_by_name(song_name)
    new_song = Song.new
    new_song.name = song_name
    new_song.save
    return new_song
  end
  
  def self.find_or_create_by_name(song_name)
    if find_by_name(song_name)
      return find_by_name(song_name)
    else
      return create_by_name(song_name)
    end
  end
  
  def self.alphabetical
    return @@all.sort{|song| song
  end
  
  
  
  def self.destroy_all
    @@all.clear
  end
end
