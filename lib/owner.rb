class Owner
attr_accessor :name, :pets 
attr_reader :species
@@all = []

  def initialize(species)
    @species = species
    @@all << self
  end  
end