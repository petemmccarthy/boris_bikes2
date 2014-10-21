class User

  def initialize(bike = nil)
    @bike = bike
  end

  def has_bike?
    !@bike.nil?
  end

  def break_bike
    @bike.break!
  end

  def rent_bike_from(docking_station)
    # @bike = docking_station.release(@bike)
  end

end