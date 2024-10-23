class WaterIntakeCalculator
  attr_accessor :name, :weight, :minutes_exercised, :temperature, :pregnant

  def initialize(name, weight, minutes_exercised, temperature, pregnant)
    @name = name
    @weight = weight
    @minutes_exercised = minutes_exercised
    @temperature = temperature
    @pregnant = pregnant
  end

  
  
end
