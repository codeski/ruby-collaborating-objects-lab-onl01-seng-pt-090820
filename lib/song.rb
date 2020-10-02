require 'pry'
class Song 
  
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all
  end 
  
  def self.new_by_filename(file)
    song = Song.new(file.split(" - ")[1])
    artist.name = Artist.find_or_create_by_name(file.split(" - ")[0])
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
  
end