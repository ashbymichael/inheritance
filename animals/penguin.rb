require_relative 'bird'
require_relative 'egg'

class Penguin < Bird
  attr_reader :favorite_food

  def initialize(args = {})
    @favorite_food = args[:favorite_food] || 'fish'
    super
  end

  def reproduce
    Egg.new(animal: Penguin)
  end

  def swim
    puts "I know how to swim!"
  end
end
