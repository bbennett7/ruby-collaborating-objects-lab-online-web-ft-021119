require "pry"

class Artist 
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    
    @songs = []
  
  end 
  
  def add_song(song)
    @songs << song
    song.artist = self 
  end 

  def save
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def print_songs 
    @songs.each{|song| puts song.name}
  end
  
  def self.find_or_create_by_name(artist_name)
    artist_names = @@all.collect{|artist| artist.name}
    
    if !artist_names.include?(artist_name)
      artist = Artist.new(artist_name)
      @@all << artist 
      artist
    else 
      @@all.find{|artist| artist.name == artist_name}
    end 

  end 
  
end 