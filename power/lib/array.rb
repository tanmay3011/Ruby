class Array

  def power(exponent)
    map! { |base| base ** exponent }
  end
end
