require_relative 'egg'

class Pigeon
  attr_reader :cover, :movement, :favorite_food, :flight_distance

  def initialize(args = {})
    @cover = args[:cover] || 'feathers'
    @movement = args[:movement] || 'wings'
    @favorite_food = args[:favorite_food] || 'trash'
    @flight_distance = args[:flight_distance] || '25km'
  end

  def eat
    puts "I ate some #{@favorite_food}!"
  end

  def reproduce
    Egg.new(animal: Pigeon)
  end

  def fly
    puts "I just flew #{@flight_distance}!"
  end
end
