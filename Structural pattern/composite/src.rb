require './elecronics.rb'
require './parts.rb'

computer = Computer.new 'intel'

cpu = Cpu.new(100)
gpu = Graphics.new(10)

computer.add_component cpu
computer.add_component gpu

puts computer.total_price
