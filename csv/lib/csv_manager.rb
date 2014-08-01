require 'csv'
require_relative 'csv_data'
class CsvManager

  attr_reader :input_filepath, :output_filepath
  def initialize(input_filepath, output_filepath)
    @input_filepath = input_filepath
    @output_filepath = output_filepath
  end

  def move_data_to_file
    hash = read_from_file
    write_into_file(hash)
  end

  private
    def read_from_file
      temp_hash = Hash.new { |hash, key| hash[key] = [] }
      CSV.foreach(input_filepath, headers: true) do |row|
        temp_hash[row['Designation']] << CsvData.new(row['Name'], row['EmpId'], row['Designation'])
      end
      temp_hash
    end

    def write_into_file(hash)
      File.open(output_filepath, 'w') do |file|
        file.puts hash.to_a
      end
    end
end
