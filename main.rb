class WaterIntakeCalculator
  attr_accessor :name, :weight, :minutes_exercised, :temperature, :pregnant

  def initialize(name, weight, minutes_exercised, temperature, pregnant)
    @name = name
    @weight = weight
    @minutes_exercised = minutes_exercised
    @temperature = temperature
    @pregnant = pregnant
  end

  def calculate_weight_intake
    @weight * 0.5
  end

  def calculate_exercise_intake
    (@minutes_exercised / 30.0) * 12
  end

  def calculate_total_intake
    intake = calculate_weight_intake + calculate_exercise_intake

    intake += 32 if @pregnant.downcase == 'yes'

    intake += 16 if @temperature >= 70

    intake
  end

  def glass_of_water
    (calculate_total_intake / 8).to_i
  end 
end

def home
  puts "Enter your name:"
  name = gets.chomp

  puts "Hello #{name},
This is a water intake program that will estimate the amount of water you'll have to drink today. 
It will take into consideration:
 - Weight
 - Activity Level
 - Outdoor Temperature
 Let's get started! Are you currently pregnant or breastfeeding? (yes/no)"
 pregnant = gets.chomp

 puts "Next, enter your weight (in pounds):"
 weight = gets.chomp.to_f

 puts "Please enter the amount of minutes exercised today:"
 minutes_exercised = gets.chomp.to_f

 puts "Now let's take into consideration the weather. WHat is the current temperature?:"
 temperature = gets.chomp.to_i

 
end
