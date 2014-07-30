require_relative '../lib/null_input_error'
require_relative '../lib/case_error'

class Name

  attr_reader :firstname, :lastname
  REGEX_FOR_EMPTY_STRING = /^\s*$/
  REGEX_FOR_FIRST_LETTER_CAPITAL = /[A-Z]/
  def initialize(firstname, lastname)
    begin
      raise NullInputError, 'First name not given' if (!(firstname !~ REGEX_FOR_EMPTY_STRING) || firstname.nil?)
      raise CaseError, 'First letter of First name is not capital' if firstname[0] !~ REGEX_FOR_FIRST_LETTER_CAPITAL
      @firstname = firstname

      raise NullInputError, 'Last name not given' if (!(lastname !~ REGEX_FOR_EMPTY_STRING) || lastname.nil?)
      @lastname = lastname
    end
  end

  def to_s
    "Name: #{ firstname } #{ lastname }"
  end
end
