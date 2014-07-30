class Fixnum

  def factorial
    if self >= 1
      (1..self).inject(:*)
    elsif zero?
      1
    end
  end
end
