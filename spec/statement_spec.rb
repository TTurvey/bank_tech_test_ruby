require './lib/statement'
require './lib/account'

describe Statement do

  describe '#print_statement_header' do
    it 'prints the account statement header' do
      statement = Statement.new
      expect(statement.print_statement_header).to eq('date || credit || debit || balance')
    end
  end

end
