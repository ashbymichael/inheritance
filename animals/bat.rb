require_relative 'animal'
require_relative 'flight'

class Bat < Animal
  include Flight
  attr_reader :cover, :movement, :favorite_food

  def initialize(args = {})
    @cover = args[:cover] || 'fur'
    @movement = args[:movement] || 'wings'
    @favorite_food = args[:favorite_food] || 'bugs'
    super
    @flight_distance = args[:flight_distance] || '10km'
  end

  def reproduce
    Bat.new
  end
end
