class Ship
  attr_reader :name, :type, :booty_atrributes
 
 @@all = []
 
  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty_atrributes = params[:booty_atrributes]
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def self.clear
    @@all.clear
  end
end