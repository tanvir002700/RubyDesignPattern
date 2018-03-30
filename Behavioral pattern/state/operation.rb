require './state.rb'

class Operation
  attr_reader :state

  def initialize
    @state = OpenState.new
  end

  def trigger(state)
    @state = @state.next(state)
  end
end

