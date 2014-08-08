require_relative '../lib/interest'

puts 'Enter principal'
principal = gets.chomp while(principal = principal.to_f) <= 0
puts 'Enter number of years for which interest is to be calculated'
time = gets.chomp while(time = time.to_f) <= 0

interest = Interest.new(principal, time)

puts "Difference b/w CI and SI is #{ interest.difference }"
