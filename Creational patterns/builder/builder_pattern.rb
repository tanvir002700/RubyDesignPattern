class Pizza
  attr_accessor :dough, :sauce, :toppin
end

class Sauce
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

module PizzaBuilder
  attr_reader :pizza

  def create_new_pizza
    @pizza = Pizza.new
  end

  def build_daugh; end
  def build_sauce; end
  def build_toppin; end
end


class HawaiianPizzaBuilder
  include PizzaBuilder

  def build_daugh
    @pizza.dough = 'cross'
  end

  def build_sauce
    @pizza.sauce = Sauce.new('mild')
  end

  def build_toppin
    @pizza.toppin = 'ham+pineapple'
  end
end

class SpicyPizzaBuilder
  include PizzaBuilder

  def build_daugh
    @pizza.dough = 'pan baked'
  end

  def build_sauce
    @pizza.sauce = Sauce.new('hot')
  end

  def build_toppin
    @pizza.toppin = 'pepperoni+salami'
  end
end

class Waiter
  attr_accessor :pizza_builder

  def pizza
    pizza_builder.pizza
  end

  def construct_pizza
    pizza_builder.create_new_pizza
    pizza_builder.build_daugh
    pizza_builder.build_sauce
    pizza_builder.build_toppin
  end
end


