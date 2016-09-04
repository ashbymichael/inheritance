require_relative 'animal'
require_relative 'egg'
require_relative 'swim'

class Tuna < Animal
  include Swim
  attr_reader :cover, :movement, :favorite_food

  def initialize(args = {})
    @cover = args[:cover] || 'scales'
    @movement = args[:movement] || 'fins'
    @favorite_food = args[:favorite_food] || 'little fish'
  end

  def reproduce
    Egg.new(animal: Tuna)
  end
end
