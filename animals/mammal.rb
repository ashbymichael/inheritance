require_relative 'animal'

class Mammal < Animal
  attr_reader :cover

  def initialize(args = {})
    @cover = args[:cover] || 'fur'
    super
  end

  def reproduce
    self.class.new
  end
end
