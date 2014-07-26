class Fixnum

  def factorial(number)
    number >= 1 ? number * factorial(number - 1) : 1
  end

  def pascal_triangle_create
    times do |i|
      (i+1).times do |j|
        yield factorial(i)/(factorial(j)*factorial(i-j))
        yield " "
      end
      yield "\n"
    end
  end
end
