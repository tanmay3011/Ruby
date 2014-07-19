class String

  VOWELS_REGEX = /[aeiou]/i
  def replace_vowel
    gsub(VOWELS_REGEX, '*')
  end

end
