class Transaction

  def initialize(date = Time.now.strftime('%d/%m/%Y'), amount)
    @date = date
    @credit = 0
    @debit = 0
    @balance = 0
  end

  def display_info
    "#{@date} || #{@credit} || #{@debit} || #{@balance}"
  end

end
