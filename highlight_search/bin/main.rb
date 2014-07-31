require_relative '../lib/string'

puts 'Enter the string:'
sentence = gets.chomp

puts 'Enter a word that needs to highlighted :'
puts sentence.highlight_search_result(gets.chomp)
