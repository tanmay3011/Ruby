require_relative '../lib/null_input_error'
require_relative '../lib/case_error'

class Name

  attr_reader :firstname, :lastname
  def initialize(firstname, lastname)
    begin
      raise NullInputError, 'First name not given' if !(firstname !~ /^\s*$/)
      raise CaseError, 'First letter of First name is not capital' if firstname[0] !~ /[A-Z]/
      @firstname = firstname

      raise NullInputError, 'Last name not given' if !(lastname !~ /^\s*$/)
      @lastname = lastname
    end
  end

  def to_s
    "Name: #{ firstname } #{ lastname }"
  end
end
