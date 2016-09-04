require_relative 'mammal'
require_relative 'flight'

class Bat < Mammal
  include Flight
  attr_reader :movement, :favorite_food

  def initialize(args = {})
    @movement = args[:movement] || 'wings'
    @favorite_food = args[:favorite_food] || 'bugs'
    super
    @flight_distance = args[:flight_distance] || '10km'
  end
end
