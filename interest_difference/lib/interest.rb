class Interest

  attr_accessor :principal, :rate, :time

  def initialize
    yield self
  end

  def calculate_simple_interest
    principal * time * rate / 100.0
  end

  def calculate_compound_interest
    principal * (((1 + rate / 100.0) ** time) - 1)
  end

  def difference
    calculate_compound_interest - calculate_simple_interest
  end
end
