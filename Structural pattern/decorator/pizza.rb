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
