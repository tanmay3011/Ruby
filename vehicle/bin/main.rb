require_relative '../lib/bike.rb'

puts Vehicle.new('YZF R1', 110200)
puts bike = Bike.new('BikeWale', 'YZF R1', 100000)
bike.price = 99000
puts bike
