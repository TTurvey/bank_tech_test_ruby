# frozen_string_literal: true

require_relative 'account'

class Statement
  STATEMENT_HEADER = 'date || credit || debit || balance'

  def initialize(account = Account)
    @account = account
  end

  def print_statement
    print STATEMENT_HEADER
    print @account.trans_log
  end
end
