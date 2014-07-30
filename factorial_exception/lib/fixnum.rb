require_relative '../lib/negative_number_error'

class Fixnum

  def factorial
    if self < 0
      raise NegativeNumberError
    elsif zero?
      1
    else
      (1..self).inject(:*)
    end

    rescue NegativeNumberError
      puts "#{ $! }: Negative Number is not allowed thus Factorial is not defined"
      abort
  end
end
