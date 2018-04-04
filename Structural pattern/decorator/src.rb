require './topping_decorator.rb'

pizza = PlainPizza.new

topping = TomatoSauce.new pizza

puts topping.cost
puts topping.description
