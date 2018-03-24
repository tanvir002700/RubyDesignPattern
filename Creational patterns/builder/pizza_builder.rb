require './pizza.rb'
require './sauce.rb'

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

