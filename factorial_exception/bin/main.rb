require_relative '../lib/fixnum'
require_relative '../lib/negative_number_error'

number = -1
begin
  raise NegativeNumberError if number < 0
  puts "Factorial of #{ number } is : #{ number.factorial }"
rescue StandardError
  puts "#{ $! } : Factorial is not defined"
end
