class Ride
  attr_reader :name,
              :min_height,
              :admission_fee,
              :excitement,
              :total_revenue,
              :rider_log

  def initialize(details)
  @name = details[:name]
  @min_height = details[:min_height]
  @admission_fee = details[:admission_fee]
  @excitement = details[:excitement]
  @total_revenue = 0
  @rider_log = Hash.new(0)
  end

  def board_rider(visitor)
    if visitor.height >= @min_height && 
      visitor.preferences == @excitement
      visitor.spending_money - 1
    end
    @total_revenue += 1
    @rider_log[visitor] += 1
    
  end
end