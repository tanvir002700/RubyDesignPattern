require './pizza_builder.rb'
require './waiter.rb'

w = Waiter.new
w.pizza_builder = SpicyPizzaBuilder.new
w.construct_pizza
puts w.pizza
