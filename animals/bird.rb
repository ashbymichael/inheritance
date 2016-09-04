require_relative 'animal'

class Bird < Animal
  attr_reader :cover, :movement

  def initialize(args = {})
    @cover = args[:cover] || 'feathers'
    @movement = args[:movement] || 'wings'
  end

  def reproduce
    Egg.new(animal: self.class)
  end
end
