class Bat
  attr_reader :cover, :movement, :favorite_food, :flight_distance

  def initialize(args = {})
    @cover = args[:cover] || 'fur'
    @movement = args[:movement] || 'wings'
    @favorite_food = args[:favorite_food] || 'bugs'
    @flight_distance = args[:flight_distance] || '10km'
  end

  def eat
    puts "I ate some #{@favorite_food}!"
  end

  def reproduce
    Bat.new
  end

  def fly
    puts "I just flew #{@flight_distance}!"
  end
end
