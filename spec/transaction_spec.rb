require './lib/transaction'
require './lib/account'

describe Transaction do

  let(:date) { Time.now.strftime('%d/%m/%Y') }
  let(:display1) { "#{date} || 100 || 0 || 100" }
  
  describe '#display_info' do
    it 'prints a row showing the transaction date' do
      transaction = Transaction.new(credit: 100, debit: 0, balance: 100)
      expect(transaction.display_info).to eq(display1)
    end

  end

end
