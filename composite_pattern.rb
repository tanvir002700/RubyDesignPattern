module Electronics
  attr_reader :components
  attr_reader :name

  def initialize(name)
    @components = []
    @name = name
  end

  def add_component(component)
    @components << component
  end

  def total_price
    @components.inject(0){ |sum, component| sum += component.price }
  end
end

class Computer
  include Electronics
end

module Parts
  attr_reader :price

  def initialize(price)
    @price = price
  end
end

class Cpu
  include Parts
end

class Graphics
  include Parts
end

