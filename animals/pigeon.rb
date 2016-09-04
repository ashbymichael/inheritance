require_relative 'bird'

class Pigeon < Bird
  attr_reader :favorite_food, :flight_distance

  def initialize(args = {})
    @favorite_food = args[:favorite_food] || 'trash'
    @flight_distance = args[:flight_distance] || '25km'
  end

  def reproduce
    Pigeon.new
  end

  def fly
    puts "I just flew #{@flight_distance}!"
  end
end
