require_relative '../lib/blank_input_error'
require_relative '../lib/case_error'

class Name

  attr_reader :firstname, :lastname

  REGEX_FOR_EMPTY_STRING = /^\s*$/
  REGEX_FOR_CAPITAL_LETTER = /[A-Z]/

  def initialize(firstname, lastname)
    raise BlankInputError, 'First name not given' if invalid?(firstname)
    raise CaseError, 'First letter of First name is not capital' if firstname[0] !~ REGEX_FOR_CAPITAL_LETTER
    @firstname = firstname

    raise BlankInputError, 'Last name not given' if invalid?(lastname)
    @lastname = lastname
  end

  def to_s
    "Name: #{ firstname } #{ lastname }"
  end

  private
    def invalid?(name)
      !(name =~ REGEX_FOR_EMPTY_STRING).nil?
    end
end
