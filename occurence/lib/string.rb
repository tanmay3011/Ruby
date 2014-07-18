class String

  def count_alphabet_occurence
    alphabets_count = Hash.new(0)
    #to split the input into individual characters (used split instead of scan because regex comparisson are slower)
    alphabet_list = split(//)
    #to increment that alphabets count
    alphabet_list.each { |alphabet| alphabets_count[alphabet] += 1 }
    #return alphabet count
    alphabets_count
  end

end
