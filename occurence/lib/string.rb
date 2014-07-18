class String

  def count_alphabet_occurence
    alphabets_count = Hash.new(0)
    alphabet_list = self.split(//)              #to split the input intu individual characters
    0.upto(alphabet_list.length - 1) do |i|
      alphabets_count[alphabet_list[i]] += 1    #to increment that alphabets count
    end
    alphabets_count                             #return alphabet count
  end

end
