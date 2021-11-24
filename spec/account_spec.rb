require './lib/account'

describe Account do

  describe '#initialize' do
    it 'creates an account with a balance of zero' do
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

  describe '#withdraw' do
    it 'minuses a specified amount from the account balance' do
      account = Account.new
      account.deposit(100)
      account.withdraw(25)
      expect(account.balance).to eq(75)
    end
  end

end
