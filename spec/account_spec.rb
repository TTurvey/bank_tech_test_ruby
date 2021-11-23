require './lib/account'

describe Account do
  
  describe '#initialize' do
    it 'creates an account with a nil balance' do
      account = Account.new
      expect(account.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'adds a specified amount to the account balance' do
      account = Account.new
      account.deposit(100)
      expect(account.balance).to eq(100)
    end
  end

end
