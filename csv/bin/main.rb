require_relative '../lib/csv_manager.rb'

csv = CsvManager.new('../bin/employee_data.csv', 'output.txt')
csv.move_data_to_file
