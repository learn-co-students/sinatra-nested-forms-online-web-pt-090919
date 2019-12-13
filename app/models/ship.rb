class Ship
  
  attr_accessor :name, :type, :booty
  
  @@ships = []
  
  def initialize(attrs)
    @name = attrs[:name]
    @type = attrs[:type]
    @booty = attrs[:booty]
    @@ships << self
  end
  
  def self.all
    @@ships
  end
  
  def self.clear
    @@ships = []
  end
  
end