require "pry"

class Song

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << self.genre
    @@artists << self.artist
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.count
    @@count
  end

  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each do |count|
      genre_count[count] += 1
    end
    genre_count.each do |genre, count|
  end
end

  def self.artist_count
    @@artists.uniq.map{|artist| [artist,@@artists.count(artist)]}.to_h
end

end

