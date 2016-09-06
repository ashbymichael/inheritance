require_relative 'bird'
require_relative 'egg'

class Pigeon < Bird
  attr_reader :favorite_food, :flight_distance

  def initialize(args = {})
    @favorite_food = args[:favorite_food] || 'trash'
    @flight_distance = args[:flight_distance] || '25km'
    super
  end

  def reproduce
    Egg.new(animal: Pigeon)
  end

  def fly
    puts "I just flew #{@flight_distance}!"
  end
end
