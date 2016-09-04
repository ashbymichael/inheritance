require_relative 'egg'

class Penguin
  attr_reader :cover, :movement, :favorite_food

  def initialize(args = {})
    @cover = args[:cover] || 'feathers'
    @movement = args[:movement] || 'wings'
    @favorite_food = args[:favorite_food] || 'fish'
  end

  def eat
    puts "I ate some #{@favorite_food}!"
  end

  def reproduce
    Egg.new(animal: Penguin)
  end

  def swim
    puts "I know how to swim!"
  end
end
