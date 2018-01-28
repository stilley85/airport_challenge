require_relative "Plane"

class Airport

  DEFAULT_CAPACITY = 50

  attr_reader :hangar, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @hangar = []
    @capacity = DEFAULT_CAPACITY
  end

  def land(plane)
    raise "Cannot land in stormy weather" if stormy?
    raise "Airport is full" if full?
    @hangar << plane
  end

  def take_off(plane)
    raise "Cannot take off in stormy weather" if stormy?
    @hangar.delete(plane)
  end

  private

  def stormy?
    rand(10) < 2
  end

  def full?
    @hangar.count >= @capacity
  end

end
