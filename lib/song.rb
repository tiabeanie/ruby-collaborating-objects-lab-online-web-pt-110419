class Song
  attr_accessor :name, :artist
<<<<<<< HEAD
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end
=======

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_name, song_name, extra = filename.split(" - ")
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
  end

  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
end
>>>>>>> ae1dad0be8a1e837d93661f1ccedf4d95593fc0f
