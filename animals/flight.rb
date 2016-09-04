module Flight
  attr_reader :flight_distance

  def initialize(args = {})
    @flight_distance = args[:flight_distance] || '25km'
    super
  end

  def fly
    puts "I just flew #{@flight_distance}!"
  end
end
