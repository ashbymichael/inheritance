require_relative 'animal'

class Tuna < Animal
  attr_reader :cover, :movement, :favorite_food

  def initialize(args = {})
    @cover = args[:cover] || 'scales'
    @movement = args[:movement] || 'fins'
    @favorite_food = args[:favorite_food] || 'little fish'
  end

  def reproduce
    Tuna.new
  end

  def swim
    puts "I know how to swim!"
  end
end
