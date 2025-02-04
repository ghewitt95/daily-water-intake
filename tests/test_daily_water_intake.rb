require 'minitest/autorun'
require './daily_water_intake'

class TestWaterIntakeCalculator  < Minitest::Test
  def setup
    @calculator = WaterIntakeCalculator.new("Sam", 150, 15, 65, "yes")
  end

  def test_calculate_weight_intake
    assert_equal 75, @calculator.calculate_weight_intake
  end 

  def test_calculate_exercise_intake
    assert_equal 6, @calculator.calculate_exercise_intake
  end

  def test_calculate_total_intake
    assert_equal 113, @calculator.calculate_total_intake  
  end

  def  test_glasses_of_water
    assert_equal 14, @calculator.glasses_of_water
  end
end
