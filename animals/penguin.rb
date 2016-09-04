require_relative 'animal'

class Penguin < Animal
  attr_reader :favorite_food

  def initialize(args = {})
    @favorite_food = args[:favorite_food] || 'fish'
  end

  def reproduce
    Penguin.new
  end

  def swim
    puts "I know how to swim!"
  end
end
