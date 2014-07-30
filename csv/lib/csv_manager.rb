require 'csv'
require_relative 'csv_data'
class CsvManager

  @@csv_path =
  def move_to_file(new_file)
    temp_hash = Hash.new { |hash, key| hash[key] = [] }
    CSV.foreach(@@csv_path, headers: true) do |row|
      temp_hash[row['Designation']] << CsvData.new(row['Name'], row['EmpId'])
    end
    puts temp_hash
    File.open(new_file, 'w') do |file|
      file.puts temp_hash.to_a
    end
  end
end
