require_relative 'egg'

class Tuna
  attr_reader :cover, :movement, :favorite_food

  def initialize(args = {})
    @cover = args[:cover] || 'scales'
    @movement = args[:movement] || 'fins'
    @favorite_food = args[:favorite_food] || 'little fish'
  end

  def eat
    puts "I ate some #{@favorite_food}!"
  end

  def reproduce
    Egg.new(animal: Tuna)
  end

  def swim
    puts "I know how to swim!"
  end
end
