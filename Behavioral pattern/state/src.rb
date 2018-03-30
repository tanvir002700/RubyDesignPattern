require './operation.rb'

op = Operation.new

op.trigger :pending_payment

puts op.state

op.trigger :confirm

puts op.state
