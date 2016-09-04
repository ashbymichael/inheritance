require_relative 'animal'

class Pigeon < Animal
  attr_reader :cover, :movement, :favorite_food, :flight_distance

  def initialize(args = {})
    @cover = args[:cover] || 'feathers'
    @movement = args[:movement] || 'wings'
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
