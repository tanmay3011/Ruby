require_relative '../lib/order'

order = Order.new()
order.add_item { |message| puts message; gets.chomp }
puts "Product  Price"
order.generate_bill { |output_message| puts output_message }
