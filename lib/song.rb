class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1

    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end


  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end


end
