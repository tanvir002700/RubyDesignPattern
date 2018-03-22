class Product

  attr_accessor :name

  def initialize(name='')
    @name = name
  end

  def _clone(product_definition)
    self.new(
      self.name
    )
  end
end

