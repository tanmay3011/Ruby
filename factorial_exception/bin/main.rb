require_relative '../lib/fixnum'

number = -4
begin
  puts "Factorial of #{ number } is : #{ number.factorial }"
rescue NegativeNumberError
  puts "#{ $! }: Negative Number is not allowed thus Factorial is not defined"
end
