class String

  def highlight_search_result(word_to_be_searched)
    occurences = 0
    regex = Regexp.new("(#{ word_to_be_searched })", 'i')
    gsub!(regex) do |matched_word|
      occurences += 1
      "(#{ matched_word })"
    end
    "#{ self }\nTotal occurrences: #{ occurences }"
  end
end
