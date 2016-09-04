require_relative 'animal'
require_relative 'swim'

class Dolphin < Animal
  include Swim
  attr_reader :cover, :movement, :favorite_food

  def initialize(args = {})
    @cover = args[:cover] || 'skin'
    @movement = args[:movement] || 'fin'
    @favorite_food = args[:favorite_food] || 'squid'
  end

  def reproduce
    Dolphin.new
  end
end
