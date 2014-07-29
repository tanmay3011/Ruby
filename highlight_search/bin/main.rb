require_relative '../lib/string'

puts 'Enter the string:'
string_to_be_searched = gets.chomp

puts 'Enter a word that needs to highlighted :'
puts string_to_be_searched.highlight_search_result(gets.chomp)
