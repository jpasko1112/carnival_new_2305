class Carnival
  attr_reader :duration,
              :rides

  def initialize(duration)
  @duration = duration
  @rides = []
  end

  def add_ride(ride)
    @rides << ride
  end

  def most_popular_ride
    count = rides.select do |ride|
      ride.rider_log.values.max
    end
    count.split
  end

  def most_profitable_ride
    @rides.max_by do |ride|
      ride.total_revenue
    end
  end

  def total_revenue
    @rides.sum do |ride|
      ride.total_revenue
    end
  end
end