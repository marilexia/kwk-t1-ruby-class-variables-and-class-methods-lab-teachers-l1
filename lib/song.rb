class Song

  @@count = 0
  @@artists = []
  @@genres = []


  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre

    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = Hash.new(0)
    @@genres.each do |g|
      genre_hash[g] += 1
    end
    return genre_hash
  end

  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each do |a|
      artist_hash[a] += 1
    end
    return artist_hash
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
