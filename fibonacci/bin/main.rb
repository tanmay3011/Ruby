require_relative '../lib/fibonacci.rb'

fibonacci = Fibonacci.new
puts 'Fibonacci Series upto 1000 : '
puts fibonacci.series {|operand1, operand2| [operand1, operand2]}
