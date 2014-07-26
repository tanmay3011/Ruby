require 'prime'

class Fixnum

  def find_prime
    list_of_prime_numbers = [2]
    (1..self).step(2) { |number| list_of_prime_numbers.push(number) if number.prime? }
    list_of_prime_numbers
  end
end
