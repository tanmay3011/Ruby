class Fixnum
  def factorial(number)
    number >= 1 ? number = number * factorial(number - 1) : 1
  end

  def pascal_triangle_create
    times do |i|
      (i+1).times do |j|
        yield factorial(i)/(factorial(j)*factorial(i-j))
      end
    end
  end

  def pascal_create
    pascal_triangle_create { |value| print value, " "  }
  end
end
