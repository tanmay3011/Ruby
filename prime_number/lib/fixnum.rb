require 'prime'

class Fixnum

  def generate_prime_numbers
    list_of_prime_numbers = []
    1.step(self) { |number| list_of_prime_numbers.push(number) if number.prime? }
    list_of_prime_numbers
  end
end
