module Pizza
  attr_accessor :description, :cost
end

class ThreeCheesePizza
  include Pizza

  def initialize
    @description = "Mozzarella, Fontina, Parmesan Cheese Pizza"
    @cost = 10.50
  end
end

class PlainPizza
  include Pizza

  def initialize
    @description = "Thin dough"
    @cost = 4.00
  end
end

module ToppingDecorator
  include Pizza

  def initialize(new_pizza)
    @temp_pizza = new_pizza
  end

  def description
    @temp_pizza.description
  end

  def cost
    @temp_pizza.cost
  end
end

class Mozzarella
  include ToppingDecorator

  def initialize(new_pizza)
    super(new_pizza)
    puts "adding Dough"
    puts "adding Moz"
  end

  def description
    @temp_pizza.description + "mozzarella"
  end

  def cost
    puts "cost of Mozz #{0.50}"
    @temp_pizza.cost + 0.5
  end
end

class TomatoSauce
  include ToppingDecorator

  def initialize(new_pizza)
    super(new_pizza)
    puts "adding sauce"
  end

  def description
    @temp_pizza.description + ", tomato sauce"
  end

  def cost
    puts "cost of sauce #{0.30}"
    @temp_pizza.cost + 0.3
  end
end


