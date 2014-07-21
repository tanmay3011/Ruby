require_relative '../lib/customer.rb'

puts 'Enter name to add account'
customer = Customer.new(gets.chomp)
puts customer
puts 'Enter amount to deposit'
puts customer.deposit(gets.chomp)
puts customer
puts 'Enter amount to withdraw'
puts customer.withdraw(gets.chomp)
puts customer
