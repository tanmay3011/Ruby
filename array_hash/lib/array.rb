class Array

  def to_hash
    resultant_hash = Hash.new { |hash, key| hash[key] = [] }
    group_by_length resultant_hash
  end

  def group_by_length(resultant_hash)
    for element in self
      resultant_hash[element.to_s.length].push(element)
    end
    resultant_hash
  end

end
