class Customer

  @@count = 0
  def initialize(name)
    @@count += 1
    @account_no = @@count
    @name = name
    @balance = 1000
  end

  def to_s
    "Name: #{ @name } \t Account_no: #{ @account_no } \t Account Balance: #{ @balance }"
  end

  def deposit(amount)
    amount = amount.to_f
    if amount > 0
      @balance += amount
      'Transaction successfully processed'
    else
      'Deposit amount must be greater than zero'
    end
  end

  def withdraw(amount)
    amount = amount.to_f
    if amount <= 0
      'Withdrawal amount must be greater than zero'
    elsif @balance <= amount
      'Not enough balance'
    else
      @balance -= amount
      'Transaction successfully processed'
    end
  end
end
