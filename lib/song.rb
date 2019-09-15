class Song 

  attr_accessor :name, :artist, :genre 

  @@count = 0 
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre

    @@genres << genre
    @@artists << artist 

    @@count +=1
  end 

  def self.count
    @@count
  end 

  def self.genres 
    @@genres.uniq 
  end 

  def self.artists
    @@artists.uniq 
  end 

  def self.genre_count
    count_hash = {}
    @@genres.each { |genre| count_hash.store(genre, @@genres.count(genre) ) }
    count_hash
  end

  def self.artist_count
    count_hash = {}
    @@artists.each { |artist| count_hash.store(artist, @@artists.count(artist)) }
    count_hash
  end 

end 