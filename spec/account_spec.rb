# Tests Account class
require 'account'

 describe Account do

  #  before(:each) do
  #    account = Account.new
  #  end

   context 'state of account on opening' do

     it 'should start with a balnce of 0' do
       expect(subject.balance).to eq(0)
     end

     it 'should have a blank account history' do
       expect(subject.history).to eq([])
     end
   end

   context 'account can be manipulated' do

     context 'deposits' do

       it 'funds can be added' do
         account = Account.new
         account.add_funds(100)
         expect(account.balance).to eq(100)
       end

       it 'history records deposit' do
         account = Account.new
         account.add_funds(100, '01/01/2017')
         expect(account.history).to eq([['01/01/2017', 100, "-", 100]])
       end
     end

     context 'withdrawls' do

       it 'funds can be withdrawn' do
         account = Account.new(300)
         account.reduce_funds(100)
         expect(account.balance).to eq(200)
       end

       it 'history records withdrawl' do
         account = Account.new(300)
         account.reduce_funds(100, '01/01/2017')
         expect(account.history).to eq([['01/01/2017', "-", 100, 200]])
       end
     end

     context 'statement' do

       it 'can print statement of history' do
         account = Account.new
         account.add_funds(500, '01/01/2017')
         account.reduce_funds(150, '03/01/2017')
         expect(account.history).to eq([['01/01/2017', 500, "-", 500], ['03/01/2017', "-", 150, 350]])
       end

       #To add further test, spying on STDOUT of printed statement in refactor.
     end

   end
 end
