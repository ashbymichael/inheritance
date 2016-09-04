require_relative 'bird'
require_relative 'egg'
require_relative 'swim'

class Penguin < Bird
  include Swim
  attr_reader :favorite_food

  def initialize(args = {})
    @favorite_food = args[:favorite_food] || 'fish'
    super
  end
end
