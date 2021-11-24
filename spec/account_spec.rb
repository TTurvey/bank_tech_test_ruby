require './lib/account'

describe Account do

  let(:date) { Time.now.strftime('%d/%m/%Y') }
  let(:display1) { "#{date} || 100 || 0 || 100" }
  let(:display2) { "#{date} || 0 || 100 || -100" }


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

  describe '#log_deposit' do
    it 'adds a deposit to the log array' do
      account = Account.new
      account.deposit(100)
      expect(account.trans_log).to eq([display1])
    end
  end

  describe '#withdraw' do
    it 'adds a specified amount to the account balance' do
      account = Account.new
      account.withdraw(100)
      expect(account.balance).to eq(-100)
    end
  end

  describe '#log_withdrawal' do
    it 'adds a withdrawal to the log array' do
      account = Account.new
      account.withdraw(100)
      expect(account.trans_log).to eq([display2])
    end
  end
end
