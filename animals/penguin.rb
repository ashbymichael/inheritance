require_relative 'animal'

class Penguin < Animal
  attr_reader :cover, :movement, :favorite_food

  def initialize(args = {})
    @cover = args[:cover] || 'feathers'
    @movement = args[:movement] || 'wings'
    @favorite_food = args[:favorite_food] || 'fish'
  end

  def reproduce
    Penguin.new
  end

  def swim
    puts "I know how to swim!"
  end
end
