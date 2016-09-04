class Animal
  def initialize(args = {})
  end

  def eat
    puts "I ate some #{@favorite_food}!"
  end

  def reproduce
    Egg.new(animal: self.class)
  end
end
