require 'pry'
class Genre 
  
  extend MusicMods::ClassMethods

  attr_accessor :name 
  attr_reader :artist 
  
  @@all = []
  
  
  
  def initialize(name)
    @name = name
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