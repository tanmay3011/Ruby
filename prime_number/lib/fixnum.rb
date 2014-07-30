require 'prime'

class Fixnum

  def self.generate_prime_numbers_till(number)
    list_of_prime_numbers = []
    list_of_prime_numbers.push(2) if number > 1
    (3..number).step(2) { |number| list_of_prime_numbers.push(number) if number.prime? }
    list_of_prime_numbers
  end
end
