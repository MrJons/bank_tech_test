# Tests Account class
require 'account'

 describe Account do

   context 'state of account on opening' do

     it 'should start with a balnce of 0' do
       expect(subject.balance).to eq(0)
     end

     it 'should have a blank account history' do
       expect(subject.history).to eq([])
     end

   end
 end
