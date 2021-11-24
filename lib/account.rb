class Account

  attr_reader :balance, :trans_log

  STARTING_BALANCE = 0

  def initialize(trans_class = Transaction)
    @balance = STARTING_BALANCE
    @trans_class = trans_class
    @trans_log = []
  end

  def deposit(amount)
    @balance += amount
    log_deposit(amount)
  end

  def withdraw(amount)
    @balance -= amount
    log_withdrawal(amount)
  end

  def log_deposit(amount)
    deposit = @trans_class.new(credit: amount, debit: 0, balance: @balance).display_info
    @trans_log.push deposit
  end

  def log_withdrawal(amount)
    withdrawal = @trans_class.new(credit: 0, debit: amount, balance: @balance).display_info
    @trans_log.push withdrawal
  end

end
