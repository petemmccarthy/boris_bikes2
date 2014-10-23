module BikeContainer

  DEFAULT_CAPACITY = 10

  def bikes
    @bikes
  end

  def dock(bike)
    raise "No space available" if full?
    bikes << bike
  end

  def empty?
    bikes.empty?
  end

  def bike_count
    bikes.count
  end

  def release(bike)
    raise "No bikes available" unless bikes.include?(bike)
    bikes.pop
  end

  def capacity
    @capacity
  end

  def full?
    capacity == bike_count
  end

  def available_bikes
    bikes.reject { |bike| bike.broken? }
  end

end


