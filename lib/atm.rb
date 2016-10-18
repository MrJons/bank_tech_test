#Responsible for interacting witht the user
require_relative 'account.rb'

class ATM

  def initialize(account=Account.new)
    @account = account
  end

  attr_reader :account

  def deposit(amount, date)
    account.add_funds(amount, date)
  end

  def withdraw(amount, date)
    account.reduce_funds(amount, date)
  end

  def print_statement
    account.construct_statement
  end

end
