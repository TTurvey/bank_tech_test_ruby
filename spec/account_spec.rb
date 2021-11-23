require './lib/account'

describe Account do
  
  describe '#initialize' do
    it 'creates an account with a nil balance' do
      account = Account.new
      expect(account.balance).to eq(0)
    end
  end


end