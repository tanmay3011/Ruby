require_relative '../lib/interest'

interest = Interest.new do |interest|
  puts 'Enter principal'
  interest.principal = gets.chomp.to_f
  puts 'Enter number of years for which interest is to be calculated'
  interest.time = gets.chomp.to_i
  interest.rate = 100
end

puts "Difference b/w CI and SI is #{ interest.difference }"
