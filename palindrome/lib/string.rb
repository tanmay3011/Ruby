class String
  def palindrome?
    strip.eql? strip.reverse
  end
end
