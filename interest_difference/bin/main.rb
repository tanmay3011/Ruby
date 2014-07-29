require_relative '../lib/interest'

interest = Interest.new do |interest|
  puts 'Enter principal'
  interest.principal = gets.chomp while(interest.principal = interest.principal.to_f) <= 0
  puts 'Enter number of years for which interest is to be calculated'
  interest.time = gets.chomp while(interest.time = interest.time.to_f) <= 0
  interest.rate = 100
end

puts "Difference b/w CI and SI is #{ interest.difference }"
