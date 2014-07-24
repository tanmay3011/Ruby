class Customer

  attr_reader :account_no, :name, :amount
  attr_accessor :balance

  @@count = 0
  def initialize(name)
    @account_no = (@@count += 1)
    @name = name
    @balance = 1000.0
  end

  def to_s
    "Name: #{ name } \t Account_no: #{ account_no } \t Account Balance: #{ balance }"
  end

  def deposit
    if amount_negative?
      error_message
    else
      adjust_balance(:+)
      transaction_successful_message
    end
  end

  def withdraw
    if amount_negative?
      error_message
    elsif balance <= amount
      'Not enough balance'
    else
      adjust_balance(:-)
      transaction_successful_message
    end
  end

  def amount=(amount)
    @amount = amount.to_f
  end

  private

    def adjust_balance(operator)
      self.balance = balance.send(operator, amount)
    end

    def error_message
      "Amount entered must be greater than zero"
    end

    def transaction_successful_message
      'Transaction successfully processed'
    end

    def amount_negative?
      amount <= 0
    end
end
