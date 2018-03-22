require './factory.rb'
require './mega_factory.rb'
require './warrior_factory.rb'

m = Factory.new MegaFactory.new
m.create 10
puts m.members


w = Factory.new WarriorFactory.new
w.create 10
puts w.members
