require_relative '../lib/customer.rb'

puts 'Enter name to add account'
customer = Customer.new(gets.chomp)
puts customer
puts 'Enter amount to deposit: '
customer.amount = gets.chomp
puts customer.deposit
puts customer
puts 'Enter amount to withdraw:'
customer.amount = gets.chomp
puts customer.withdraw
puts customer
