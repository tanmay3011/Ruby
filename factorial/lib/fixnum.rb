class Fixnum

  def factorial
    if self > 1
      (2..self).inject(:*)
    else
      1
    end
  end
end
