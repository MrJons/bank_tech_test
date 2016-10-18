# Responsible for enacting requests on the account/balance made by the ATM class

class Account

  def initialize(balance=0)
    @balance = balance
    @history = []
  end

  attr_reader :balance, :history

end
