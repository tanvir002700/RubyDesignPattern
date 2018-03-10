class WelcomeToBank
  def initialize
    puts "welcome to ABC bank"
    puts "We are happy to give you your money if we can find it"
  end
end

class AccountNumberCheck
  attr_reader :account_number

  def initiazlie
    @account_number = 123456789
  end

  def account_activate?(account_number_to_check)
    return account_number == account_number_to_check
  end
end
