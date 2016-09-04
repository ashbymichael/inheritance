class Tuna
  def initialize(args = {})
    @cover = args[:cover] || 'scales'
    @movement = args[:movement] || 'fins'
    @favorite_food = args[:favorite_food] || 'little fish'
  end

  def eat
    puts "I ate some #{@favorite_food}!"
  end

  def reproduce
    Tuna.new
  end

  def swim
    puts "I know how to swim!"
  end
end
