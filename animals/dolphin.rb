class Dolphin
  attr_reader :cover, :movement, :favorite_food

  def initialize(args = {})
    @cover = args[:cover] || 'skin'
    @movement = args[:movement] || 'fin'
    @favorite_food = args[:favorite_food] || 'squid'
  end

  def eat
    puts "I ate some #{@favorite_food}!"
  end

  def reproduce
    Dolphin.new
  end

  def swim
    puts "I know how to swim!"
  end
end
