class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all()
    @@all
  end

  def self.find_by_name(song_name)
    return @@all.find(song_name)
  end

  def save()
    self.class.all << self
  end
  
  def self.create()
    save()
    return self
  end
  
  def new_by_name(song_name)
    @name = song_name
  end
  
  def create_by_name(song_name)
    @name = song_name
    save()
  end
  
  

end
