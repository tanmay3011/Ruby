class CsvData

  attr_reader :name, :employee_id

  def initialize(name, employee_id, designation)
    @name = name
    @employee_id = employee_id
    @designation = designation
  end

  def to_s
    "#{ name } (EmpId: #{ employee_id })"
  end
end
