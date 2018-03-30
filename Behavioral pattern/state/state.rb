class IllegalStateJumpError < StandardError; end

class ConfirmState; end

class PendingPaymentState
  def next(state)
    raise IllegalStateJumpError.new unless valid?(state)
    ConfirmState.new
  end

  def valid?(state)
    state == :confirm
  end
end


class OpenState
  def next(state)
    raise IllegalStateJumpError.new unless valid?(state)
    PendingPaymentState.new
  end

  def valid?(state)
    state == :pending_payment
  end
end

