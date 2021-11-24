require './lib/account'
require './lib/statement'

describe Statement do
  let(:date) { Time.now.strftime('%d/%m/%Y') }
  let(:statement1) {
    "date || credit || debit || balance"
    "#{date} || 0 || 50 || 50"
    "#{date} || 100 || 0 || 100"
  }

  describe '#print_statement' do
    it '' do
      account = Account.new
      statement = Statement.new
      account.deposit(100)
      account.withdraw(50)
      expect(statement.print_statement).to eq(statement1)
    end
  end

end
