class Pirate
  
  attr_accessor :name, :weight, :height
  
  def initialize(attrs)
    @name = attrs[:name]
    @weight = attrs[:weight]
    @height = attrs[:height]
  end
  
end