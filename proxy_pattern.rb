module GetAtmData
  def get_atm_state; end
  def get_cache_in_machine; end
end

class AtmMachine
  include GetAtmData

  def get_yes_card_state
    :has_card
  end

  def get_no_card_state
    :no_card
  end

  def get_has_pin
    :has_correct_pin
  end

  def get_no_cache_state
    :atm_out_of_money
  end
end

