require 'pry'

class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count +=1
    @@genres << @genre
    @@artists << @artist
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
<<<<<<< HEAD
    genre_hash = Hash.new(0)
    @@genres.each do |genre|
        genre_hash[genre] += 1
    end
    genre_hash
  end
  
   def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each do |artist|
        artist_hash[artist] += 1
    end
    artist_hash
  end
=======
    genre_hash = {}
    
    @@genres.each do |genre|
        genre_hash[genre] += 1
    end
    
    genre_hash
  end
>>>>>>> f4ac580f28a25ebdde9e1d3b31a8c32738ecacb9
end