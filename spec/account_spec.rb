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
         expect(account.history).to eq([['01/01/2017', 100, 100]])
       end
     end



   end
 end
