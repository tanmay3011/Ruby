require 'csv'
require_relative 'csv_data'
class CsvManager

  attr_reader :input_filepath
  def initialize(input_filepath)
    @input_filepath = input_filepath
  end

  def move_to_file(output_filepath)
    temp_hash = Hash.new { |hash, key| hash[key] = [] }

    CSV.foreach(input_filepath, headers: true) do |row|
      temp_hash[row['Designation']] << CsvData.new(row['Name'], row['EmpId'])
    end

    File.open(output_filepath, 'w') do |file|
      file.puts temp_hash.to_a
    end
  end
end
