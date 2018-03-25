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
    OperationPendingPaymentState.new if valid?(state)
  end

  def valid?(state)
    state == :pending_payment
  end
end

class Operation
  attr_reader :state

  def initialize
    @state = OperationOpenState.new
  end

  def trigger(state)
    @state = @state.next(state)
  end
end

