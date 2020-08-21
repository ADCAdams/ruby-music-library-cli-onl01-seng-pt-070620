require 'pry'
class Song 
  
  extend MusicMods::ClassMethods

  
  attr_accessor :name 
  attr_reader :artist 
  
  @@all = []
  
  
  
  def initialize(name, artist = nil)
    @name = name
    artist=(artist) if artist != nil  
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end
  
  
  def self.destroy_all
      @@all = []
  end
      
  def self.all 
    @@all 
  end
  
  def save
    @@all << self 
  end
  
  def self.create(name)
      new = self.new(name)
      new.save
      new
  end
    
  
  
end