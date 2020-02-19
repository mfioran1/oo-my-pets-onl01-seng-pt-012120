require 'pry'
class Owner
attr_accessor :pets 
attr_reader :name, :species
@@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:dogs => [], :cats => []}
  end  
  
  def say_species
    "I am a #{@species}."
  end 
  
  def cats 
    Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs 
     Dog.all.select{|dog| dog.owner == self}
  end
  
  def buy_cat(cat_name)
    @pets[:cats] = Cat.new(cat_name, self)
  end
  
  def buy_dog(dog_name)
    @pets[:dogs] = Dog.new(dog_name, self)
  end
  
  def walk_dogs
    dogs.each do |dog|
    dog.mood = "happy"
    end
  end
  
  def feed_cats
    cats.each do |cat|
      cat.mood = "happy"
    end
  end 
  
  def sell_pets
    binding.pry
    dogs.each do |dog|
    cats.each do |cat|  
    pet.mood = "nervous"
      end
    end 
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