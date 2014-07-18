class String

  def count_alphabet_occurence
    alphabets_count = Hash.new(0)
    #to split the input into individual characters
    alphabet_list = split(//)
    0.upto(alphabet_list.length - 1) do |i|
      #to increment that alphabets count
      alphabets_count[alphabet_list[i]] += 1
    end
    #return alphabet count
    alphabets_count
  end

end
