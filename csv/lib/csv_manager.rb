require 'csv'
require_relative 'csv_data'
class CsvManager

  attr_reader :input_filepath, :output_filepath
  def initialize(input_filepath, output_filepath)
    @input_filepath = input_filepath
    @output_filepath = input_filepath
    @temp_hash = Hash.new { |hash, key| hash[key] = [] }
  end

  def move_data_to_file
    read_from_file
    write_into_file
  end

  private
    def read_from_file
      CSV.foreach(input_filepath, headers: true) do |row|
        @temp_hash[row['Designation']] << CsvData.new(row['Name'], row['EmpId'])
      end
    end

    def write_into_file
      File.open(output_filepath, 'w') do |file|
        file.puts @temp_hash.to_a
      end
    end
end
