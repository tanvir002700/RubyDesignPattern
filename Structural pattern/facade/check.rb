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
