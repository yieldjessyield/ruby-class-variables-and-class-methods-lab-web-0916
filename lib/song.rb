require 'pry'
class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []
@@genre_count = {}
@@artists_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    if @@genres.include?(@genre)
      @@genre_count[genre] += 1
    else
      @@genre_count[genre] = 1
    end

    if @@artists.include?(@artist)
      @@artists_count[artist] += 1
    else
      @@artists_count[artist] = 1
    end


    @@count += 1
    @@genres << genre
    @@artists << artist

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
    @@genre_count
  end

  def self.artist_count
    @@artists_count
  end



end

#pry.start
