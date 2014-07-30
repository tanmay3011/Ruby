require_relative '../lib/fixnum'

number = -4
begin
  raise NegativeNumberError if number < 0
  puts "Factorial of #{ number } is : #{ number.factorial }"
rescue StandardError
  puts "#{ $! } : Factorial is not defined"
end
