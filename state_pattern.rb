class IllegalStateJumpError < StandardError; end
class OperationConfirmState; end

class OperationPendingPaymentState
  def next(state)
    OperationConfirmState.new if valid?(state)
  end

  def valid?(state)
    state == :confirm
  end
end


class OperationOpenState
  def next(state)
    valid?(state) ? OperationPendingPaymentState.new : raise IllegalStateJumpError
  end

  def valid?(state)
    state == :pending_payment
  end
end

