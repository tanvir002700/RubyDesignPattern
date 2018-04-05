class BankFund
  attr_reader :cash_in_account

  def initialize
    @cash_in_account = 0
  end

  def deposite(cash_to_deposite)
    @cash_in_account += cash_to_deposite
  end

  def withdraw(cash_to_withdraw)
    if have_enough_money?(cash_to_withdraw)
      @cash_in_account -= cash_to_withdraw
      true
    else
      puts "not enough money"
      false
    end
  end

  private

  def have_enough_money?(cash)
    cash_in_account >= cash
  end
end
