require "pry"

class MP3Importer 
  attr_accessor :path, :files 
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.entries(@path).delete_if{|file| !file.end_with?(".mp3")}
  end 
  
  def import
    Song.new_by_filename
  end 
  
end 