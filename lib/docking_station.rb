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
    raise "No space available" if full?
    bikes << bike
  end

  end










