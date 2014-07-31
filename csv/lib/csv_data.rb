class CsvData

  attr_reader :name, :employee_id

  def initialize(name, employee_id)
    @name = name
    @employee_id = employee_id
  end

  def to_s
    "#{ name } (EmpId: #{ employee_id }) "
  end
end
