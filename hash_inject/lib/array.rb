class Array

  def group_by_length
    hash = Hash.new { |hash, key| hash[key] = [] }
    for element in self
      hash[element.to_s.length].push(element)
    end
    hash
  end

  def group_by_even_odd_length
    resultant_hash = Hash.new { |hash, key| hash[key] = [] }
    group_by_length.inject(0) { |hash, (key, element)|
      resultant_hash[key.even? ? :even : :odd].push(element)
    }
    resultant_hash
  end
end
