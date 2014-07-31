require_relative '../lib/csv_manager.rb'

csv = CsvManager.new('../bin/employee_data.csv')
csv.move_to_file('output.txt')
