class Fibonacci

  def series
    number1, number2 = 0, 1
    result = []
    while number1 < 1000
      result.push(number1)
      number1, number2 = yield number2, (number1 + number2)
    end
    result
  end

end
