class Transaction

  def initialize(date = Time.now.strftime('%d/%m/%Y'), credit: nil, debit: nil, balance: nil)
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance
  end

  def display_info
    "#{@date} || #{@credit} || #{@debit} || #{@balance}"
  end

end
