class Fixnum

  def create_pascal_triangle
    if whole_number?
      (self + 1).times do |i|
        (i + 1).times do |j|
          if j > i / 2
            j = i - j
          end
          yield combination(i, j)
          yield " "
        end
        yield "\n"
      end
    end
  end

  def factorial
    if whole_number?
      self > 1 ? self * (self - 1).factorial : 1
    end
  end

  private
    def whole_number?
      self >= 0
    end

    def combination(i, j)
      i.factorial / (j.factorial * (i - j).factorial)
    end
end
