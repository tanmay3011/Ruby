class Fixnum

  def factorial
    #if whole_number? only in case if we need this function from outside
    #else this method should be private and remove whole_number? method from here
    if whole_number?
      self > 1 ? self * (self - 1).factorial : 1
    end
  end

  def create_pascal_triangle
    if whole_number?
      (self + 1).times do |i|
        (i + 1).times do |j|
          yield i.factorial / (j.factorial * (i - j).factorial)
          yield " "
        end
        yield "\n"
      end
    end
  end

  private
    def whole_number?
      self >= 0
    end
end
