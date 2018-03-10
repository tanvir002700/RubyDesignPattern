class WelcomeToBank
  def initialize
    puts "welcome to ABC bank"
    puts "We are happy to give you your money if we can find it"
  end
end

class AccountNumberCheck
  attr_reader :account_number

  def initialize
    @account_number = 123456789
  end

  def account_activate?(account_number_to_check)
    account_number == account_number_to_check
  end
end

class SecurityCodeCheck
  attr_reader :security_code

  def initialize
    @security_code = 1234
  end

  def code_correct?(code_to_check)
    security_code == code_to_check
  end
end

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

