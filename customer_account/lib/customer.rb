class Customer

  attr_reader :balance, :accout_no
  attr_accessor :amount

  @@count = 0
  def initialize(name)
    @account_no = (@@count += 1)
    @name = name
    @balance = 1000.0
  end

  def to_s
    "Name: #{ @name } \t Account_no: #{ @account_no } \t Account Balance: #{ @balance }"
  end

  def deposit
    if check_amount?
      error_message('Deposit')
    else
      adjust_balance(:+)
      transaction_successful_message
    end
  end

  def withdraw
    if check_amount?
      error_message('Withdraw')
    elsif @balance <= @amount
      'Not enough balance'
    else
      adjust_balance(:-)
      transaction_successful_message
    end
  end

  def adjust_balance(operator)
    @balance = @balance.send(operator, @amount)
  end

  def error_message(operation_name)
    "#{ operation_name } amount must be greater than zero"
  end

  def transaction_successful_message
    'Transaction successfully processed'
  end

  def check_amount?
    @amount = @amount.to_f
    @amount <= 0
  end
end
