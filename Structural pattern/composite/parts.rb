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

