class Egg
  def initialize(args)
    @animal = args[:animal]
  end

  def hatch
    @animal.new
  end
end
