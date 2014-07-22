require_relative '../lib/vehicle.rb'

class Bike < Vehicle

  def initialize(dealer_name, name, price)
    super(name, price)
    @dealer_name = dealer_name
  end

  def to_s
    "Dealer Name: #{ @dealer_name } \t #{ super }"
  end
end
