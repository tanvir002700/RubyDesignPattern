require './hero.rb'
require './computer.rb'

hero = Hero.new
computer = ComputerProxy.new hero

computer.add 'command 1'

hero.keywords << :computer
puts computer.execute

