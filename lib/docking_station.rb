class DockingStation

  DEFAULT_CAPACITY = 10

  def initialize( options = {} )
    @bikes ||= []
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end

  def bikes
    @bikes
  end

  def dock(bike)
    bikes << bike
  end

  def empty?
    bikes.empty?
  end

end










