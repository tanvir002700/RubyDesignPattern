class IllegalStateJumpError < StandardError; end

class ConfirmState; end

class PendingPaymentState
  def next(state)
    ConfirmState.new if valid?(state)
  end

  def valid?(state)
    state == :confirm
  end
end


class OpenState
  def next(state)
    PendingPaymentState.new if valid?(state)
  end

  def valid?(state)
    state == :pending_payment
  end
end

