class Array

  def group_by_length
    resultant_hash = Hash.new { |hash, key| hash[key] = [] }
    for element in self
      resultant_hash[element.to_s.length].push(element)
    end
    resultant_hash
  end
end
