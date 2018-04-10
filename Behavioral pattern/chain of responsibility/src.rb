require './numbers.rb'
require './operations.rb'

add_chain = AddNumbers.new
sub_chain = SubtractNumbers.new

add_chain.next_chain = sub_chain

request = Numbers.new(2,4, :add)
add_chain.calculate(request)
