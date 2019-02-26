require "pry"

class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    
    @name = name 
    
  end 
  
  def Song.artist(artist_name)
 
  end 
  
  def self.new_by_filename(file)
    file_data = file.chomp(".mp3").split(" - ")
    artist_name = file_data[0]
    song_name = file_data[1]
    genre = file_data[2]
    
    song = Song.new(song_name)
    
    artist_index = Artist.all.index{|artist| artist.name == artist_name}
    Artist.all[artist_index].songs << song_name 
    
    song
  end
end 