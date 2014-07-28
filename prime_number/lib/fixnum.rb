require 'prime'

class Fixnum

  def generate_prime_numbers
    list_of_prime_numbers = []
    list_of_prime_numbers.push(2) if self > 1
    (3..self).step(2) { |number| list_of_prime_numbers.push(number) if number.prime? }
    list_of_prime_numbers
  end
end
