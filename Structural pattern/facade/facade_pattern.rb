class BankAccountFacade
  attr_accessor :welcome, :account_checker, :code_checker, :fund
  def initialize(new_account_number, new_sec_code)
    @account_number = new_account_number
    @sec_code = new_sec_code

    @welcome = WelcomeToBank.new
    @account_checker = AccountNumberCheck.new
    @code_checker = SecurityCodeCheck.new
    @fund = BankFund.new
  end

  def withdraw_cash(cash)
    if(account_checker.account_activate?(@new_account_number) && fund.code_correct?(@sec_code))
      if(fund.withdraw(cash))
        puts "successfully with draw"
      else
        puts "something went wrong"
      end
    end
  end
end

