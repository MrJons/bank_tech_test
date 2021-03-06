# Responsible for enacting requests on the history made by the ATM class

class Account

  def initialize(balance=0)
    @balance = balance
    @history = []
  end

  attr_reader :balance, :history

  def add_funds(amount, date=Time.now.strftime("%d/%m/%Y"))
    @balance += amount
    record_history("deposit", amount, date)
  end

  def reduce_funds(amount, date=Time.now.strftime("%d/%m/%Y"))
    fail "Insuficcient funds" if amount > balance
    @balance -= amount
    record_history("withdrawl", amount, date)
  end

  def construct_statement
    fail "No account history" if history == []
    puts "---date--- || credit || debit || balance"
    history.reverse.each do |entry|
      puts "#{entry[0]} || #{entry[1]} || #{entry[2]} || #{entry[3]}"
    end
  end

  private

  def record_history(type, amount, date)
    if type == "deposit"
      @history << [date, amount,   "-" , @balance]
    elsif type == "withdrawl"
      @history << [date,  "-"  , amount, @balance]
    end
  end

end
