require_relative 'account'

class Statement

  attr_reader :account

  def initialize(account = Account)
    @account = account
  end

  def print_statement_header
    'date || credit || debit || balance'
  end

  def print_transactions(account)
    "#{date} || #{credit} || #{debit} || #{balance} "
  end

end