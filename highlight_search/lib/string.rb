class String

  def highlight_search_result(word_to_be_searched)
    regex = Regexp.new("(#{ word_to_be_searched })", 'i')
    "#{ gsub(regex, '(\\1)') } \nTotal occurrences: #{ scan(regex).length }"
  end
end
