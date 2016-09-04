require_relative 'bird'
require_relative 'egg'
require_relative 'flight'

class Pigeon < Bird
  include Flight
  attr_reader :favorite_food

  def initialize(args = {})
    @favorite_food = args[:favorite_food] || 'trash'
    super
  end
end
