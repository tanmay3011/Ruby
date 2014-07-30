require_relative '../lib/fixnum'

number = 3
puts "List of prime numbers till #{ number } (inclusive): #{ Fixnum.generate_prime_numbers_till(number) }"
