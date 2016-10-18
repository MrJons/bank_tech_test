# Responsible for enacting requests on the account/balance made by the ATM class

class Account

  def initialize(balance=0)
    @balance = balance
    @history = []
  end

  attr_reader :balance, :history

  def add_funds(amount, date=Time.now.strftime("%d/%m/%Y"))
    @balance += amount
    record_history(amount, date)
  end

  private

  def record_history(amount, date)
    @history << [date, amount, @balance]
  end

end
