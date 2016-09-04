require_relative 'Mammal'
require_relative 'swim'

class Dolphin < Mammal
  include Swim
  attr_reader :movement, :favorite_food

  def initialize(args = {})
    @movement = args[:movement] || 'fin'
    @favorite_food = args[:favorite_food] || 'squid'
    super
    @cover = args[:cover] || 'skin'
  end
end
