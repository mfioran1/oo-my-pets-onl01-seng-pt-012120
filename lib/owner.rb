class Owner
attr_accessor :pets 
attr_reader :name, :species
@@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end  
  
  def say_species
    "I am a #{@species}."
  end 
  
  def cats 
    Cat.all.select{|cat| cat.owner == self}
  end
  
  
  
  
  
  
  
  
  
  
  
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end 
  
  
end