class Fixnum

  def factorial
    if self >= 1
      (1..self).inject(:*)
    elsif self == 0
      1
    else
      'Not Defined'
    end
  end
end
