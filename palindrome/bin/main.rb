require_relative '../lib/string.rb'

puts "Enter a string to check whether it's palindrome or not [Q/q to exit]"
until (input_string = gets.chomp) =~ /^\s*q\s*$/i
  if input_string.palindrome?
    puts "It is a palindrome"
  else
    puts "It is not a palindrome"
  end
end
