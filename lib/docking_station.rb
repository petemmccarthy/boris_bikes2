require_relative 'bike_container'

class DockingStation

  include BikeContainer

  DEFAULT_CAPACITY = 10

  def initialize( options = {} )
    @bikes ||= []
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end

end

