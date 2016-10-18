#Tests ATM class

require 'atm'

describe ATM do

  it 'should be able to deposit funds' do
    atm = ATM.new
    atm.deposit(100, '01/01/2017')
    expect(atm.account.balance).to eq(100)
  end

  it 'should be able to withdraw funds' do
    atm = ATM.new
    atm.deposit(100, '01/01/2017')
    atm.withdraw(50, '02/01/2017')
    expect(atm.account.balance).to eq(50)
  end
end
