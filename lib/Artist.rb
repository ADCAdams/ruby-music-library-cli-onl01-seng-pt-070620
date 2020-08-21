require 'pry'
class Artist 
  
  extend MusicMods::ClassMethods

  
  attr_accessor :name, :songs
  attr_reader :artist 
  
  @@all = []
  
  
  
  def initialize(name)
    @name = name
    @songs = []
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
  
  
  def add_song(song)
    song.artist = self if song.artist != self 
    @songs << song unless @songs.include? song
  end
 
   
end